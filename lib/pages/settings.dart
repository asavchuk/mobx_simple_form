import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../mobx/form_store.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<FormStore>(context);

    final firstNameController = TextEditingController(text: store.firstName);
    final lastNameController = TextEditingController(text: store.lastName);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Observer(
              builder: (_) => TextField(
                autofocus: true,
                controller: firstNameController,
                onChanged: (value) => store.setFirstName(value),
                decoration:
                    InputDecoration(labelText: 'First Name', errorText: store.error.firstName),
              ),
            ),
            TextField(
              controller: lastNameController,
              onChanged: (value) => store.setLastName(value),
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            TextButton(
              child: Text('Save'),
              onPressed: () {
                // to prevent submitting the form with empty field
                if (store.firstName.isEmpty) store.validateFirstName('');

                if (store.error.hasErrors) return;
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
