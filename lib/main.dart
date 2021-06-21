import 'package:flutter/material.dart';
import './dependencies.dart' as di;
import 'screens/contact_list_screen.dart';

void main() {
  di.init();
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.purple),
    home: ContactListScreen(),
  ));
}
