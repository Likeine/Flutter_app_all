import 'package:flutter/material.dart';
import 'package:flutter_example/Second_View.dart';

class MyHomePage extends StatefulWidget
{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text("네비게이터 확인"),
      ),
      body: Center
      (
        child: GestureDetector
        (
          onTap: () => Navigator.push(context, MaterialPageRoute(
            builder:  (_) => const SecondView())
          ),
          child: Container
          (
            padding: const EdgeInsets.all(15),
            color: Colors.blue,
            child: const Text("Get started"),
          ),
        ),
      ),
    );
  }
}
