import 'package:flutter/material.dart';

class ButtonView extends StatefulWidget
{
  const ButtonView({super.key});

  @override
  State<ButtonView> createState() => _ButtonViewState();
}

class _ButtonViewState extends State<ButtonView>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text("버튼"),
      ),
      body: Container
      (
        child: Column
        (
          children:
          [
            Center
            (
              child: ElevatedButton
              (
                style: ElevatedButton.styleFrom
                (
                  backgroundColor: Colors.yellow
                ),
                onPressed: () { print("ElevatedButton click"); },
                child: const Text("ElevatedButton"),
              ),
            ),
            Center
              (
              child: TextButton
                (
                onPressed: () { print("TextButton click"); },
                child: const Text("TextButton"),
              ),
            ),
            Center
              (
              child: OutlinedButton
                (
                onPressed: () { print("OutlinedButton click"); },
                child: const Text("OutlinedButton"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
