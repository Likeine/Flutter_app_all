import 'package:flutter/material.dart';
import 'package:flutter_example/Second_View.dart';

class NavigatorView extends StatefulWidget
{
  const NavigatorView({super.key});

  @override
  State<NavigatorView> createState() => _NavigatorViewState();
}

class _NavigatorViewState extends State<NavigatorView>
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
