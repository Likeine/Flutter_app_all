import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey,
      child: Stack
      (
        children:
        [
          Container
          (
            width: 100,
            height: 100,
            margin: const EdgeInsets.only(top: 650, left: 25),
            color: Colors.yellow
          ),
          Container
          (
            width: MediaQuery.of(context).size.width,
            height: 150,
            margin: const EdgeInsets.only(top: 750, left: 0),
            color: Colors.brown,
          ),
          Container
          (
            width: 200,
            height: 75,
            margin: const EdgeInsets.only(top: 250, left: 110),
            color: Colors.lightBlue,
          ),
        ],
      ),
    );
  }
}
