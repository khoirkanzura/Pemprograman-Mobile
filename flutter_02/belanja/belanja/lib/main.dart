import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'models/item.dart';
import 'pages/home_page.dart';
import 'pages/item_detail_page.dart';

void main() {
  runApp(const MyApp());
}

// Router didefinisikan di top-level
final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/item',
      builder: (context, state) {
        final extra = state.extra;
        if (extra is! Item) {
          return const Scaffold(
            body: Center(child: Text('Item tidak ditemukan')),
          );
        }
        return ItemDetailPage(item: extra);
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SuperMarket',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Poppins',
      ),
      routerConfig: _router,
    );
  }
}
