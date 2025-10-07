import 'package:flutter/material.dart';
import 'package:layout_flutter/pages/home_page.dart';
import 'package:layout_flutter/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => const ItemPage(),
    },
  ));
}
