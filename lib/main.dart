import 'package:flutter/material.dart';
import 'package:mobx_simple_form/pages/welcome.dart';
import 'package:provider/provider.dart';

import 'mobx/form_store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (BuildContext context) => FormStore(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Welcome(),
      ),
    );
  }
}
