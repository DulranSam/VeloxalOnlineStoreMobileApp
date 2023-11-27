import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Veloxal"),
        ),
        body: Center(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://us-tuna-sounds-images.voicemod.net/58cdc2c9-fcc3-4d4f-a60f-52b024b3a5ba-1671409307595.jpg",
                    cacheHeight: 300,
                  ),
                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 32, color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 4,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your username',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 4,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your Password',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaceholderScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 24),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Screen"),
      ),
      body: const Center(
        child: Text("Welcome! This is the destination screen."),
      ),
    );
  }
}
