import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobx_simple_form/pages/settings.dart';
import 'package:provider/provider.dart';

import '../mobx/form_store.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<FormStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobx example'),
        actions: <Widget>[
          InkWell(
            child: Icon(Icons.settings),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Settings(),
                ),
              );
            },
          ),
          SizedBox(width: 10)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          children: <Widget>[
            Text(
              'Welcome',
              style: GoogleFonts.lakkiReddy(
                fontSize: 40.0,
                textStyle: TextStyle(color: Colors.black),
              ),
            ),
            Observer(
              builder: (_) {
                return Text(
                  store.firstName.isEmpty ? 'First' : store.firstName,
                  style: GoogleFonts.lakkiReddy(
                    fontSize: 40.0,
                    textStyle: TextStyle(color: Colors.black),
                  ),
                );
              },
            ),
            Observer(
              builder: (_) {
                return Text(
                  store.lastName.isEmpty ? 'Last' : store.lastName,
                  style: GoogleFonts.lakkiReddy(
                    fontSize: 40.0,
                    textStyle: TextStyle(color: Colors.black),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
