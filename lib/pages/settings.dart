import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../mobx/form_store.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late final store;
  late final firstNameController;
  late final lastNameController;

  @override
  void initState() {
    store = Provider.of<FormStore>(context, listen: false);
    firstNameController = TextEditingController(text: store.firstName);
    lastNameController = TextEditingController(text: store.lastName);
    super.initState();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            Observer(
              builder: (_) => TextButton(
                child: Text('Save'),
                onPressed: store.error.hasErrors
                    ? null
                    : () {
                        Navigator.pop(context);
                      },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
