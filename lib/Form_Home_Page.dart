import 'package:flutter/material.dart';

class FormPage extends StatefulWidget
{
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage>
{
  final _key = GlobalKey<FormState>();
  late String _username, _email;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Form Page"),
      ),
      body: Container
      (
        padding: EdgeInsets.all(15),
        child: Form
        (
          key: _key,
          child: Column
          (
            children:
            [
              usernameInput(),
              const SizedBox(height: 15),
              emailInput(),
              const SizedBox(height: 20),
              submitButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget usernameInput()
  {
    return TextFormField
    (
      autofocus: true,
      validator: (val)
      {
        if(val == null || val.isEmpty)
        {
          return "The Input Is Empty";
        }
        else
        {
          return null;
        }
      },
      onSaved: (username) => _username = username ?? '',
      decoration: const InputDecoration
      (
        border: OutlineInputBorder(),
        hintText: "이름을 입력해 주세요.",
        labelText: "username"
      ),
    );
  }

  Widget emailInput()
  {
    return TextFormField
      (
      autofocus: true,
      validator: (val)
      {
        if(val == null || val.isEmpty)
        {
          return "The Input Is Empty";
        }
        else
        {
          return null;
        }
      },
      onSaved: (email) => _email = email ?? '',
      decoration: const InputDecoration
        (
          border: OutlineInputBorder(),
          hintText: "이메일을 입력해 주세요.",
          labelText: "email"
      ),
    );
  }

  Widget submitButton()
  {
    return ElevatedButton
    (
      onPressed: ()
      {
        print("버튼이 눌렸습니다");
        if(_key.currentState!.validate())
        {
          _key.currentState!.save();
          Navigator.pushNamed
          (
            context,
            "/success",
            arguments: {"username": _username, "email": _email},
          );
        }
      },
      child: Container
      (
        child: Text("Submit"),
      )
    );
  }
}
