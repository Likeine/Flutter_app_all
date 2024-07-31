import 'package:flutter/material.dart';
import 'package:flutter_example/Form_Home_Page.dart';
import 'package:flutter_example/Form_Page_Success.dart';

//commit Test


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true
      ),
      initialRoute: "/",
      routes:
      {
        "/": (context) => MyHomePage(),
        "/success": (context) => SuccessPage()
      },
    );
  }
}
