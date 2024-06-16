import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'main_page.dart';
import 'safe_page.dart';
import 'lock_page.dart';

void main() async {
  await initializeDateFormatting();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Piciary',
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/lock': (context) => LockPage(),
        '/safe': (context) => SafePage(),
      },
    );
  }
}
