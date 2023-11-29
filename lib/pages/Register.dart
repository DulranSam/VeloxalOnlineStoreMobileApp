import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Register",
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Padding(padding: EdgeInsets.all(15)),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Create an username',
              labelStyle: TextStyle(color: Colors.black)),
        ),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Create your password',
              labelStyle: TextStyle(color: Colors.black)),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
        ),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your email',
              labelStyle: TextStyle(color: Colors.black)),
        ),
        ElevatedButton(
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Hooray'),
              content: const Text('Account Created'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ),
          ),
          child: const Text('Show Dialog'),
        )
      ]),
    );
  }
}
