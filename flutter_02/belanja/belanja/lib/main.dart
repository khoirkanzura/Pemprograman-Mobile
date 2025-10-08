import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/item_detail_page.dart';
import 'models/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SuperMarket',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      onGenerateRoute: (settings) {
        if (settings.name == '/item') {
          final item = settings.arguments as Item;
          return MaterialPageRoute(
            builder: (context) => ItemDetailPage(item: item),
          );
        }
        return null;
      },
    );
  }
}
