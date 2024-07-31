import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget
{
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    final Map<String, String> args = ModalRoute.of(context)!.settings.arguments
    as Map<String, String>;

    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text("Success Page"),
      ),
      body: Center
      (
        child: Column
        (
          children:
          [
            Text("Username: ${args['username']}"),
            Text("Username: ${args['email']}"),
            const SizedBox(height: 20),
            ElevatedButton
            (
              onPressed: ()
              {
                Navigator.pop(context);
              },
              child: const Text("Back to Home")
            )
          ],
        ),
      ),
    );
  }
}
