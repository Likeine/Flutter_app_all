import 'package:flutter/material.dart';
import 'package:flutter_example/main.dart';

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
      home: const MyHomePage(),
    );
  }
}



class MyHomePage extends StatelessWidget
{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("앱 바입니다."),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            ListTile(
              title: Text("Menu 1"),
            ),
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            child: Text("Drawer Header Part")
            )
          ],
        ),
      ),
      body: const Center(
        child: Text("Hello World!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("click start"),
      ),
    );
  }
}

