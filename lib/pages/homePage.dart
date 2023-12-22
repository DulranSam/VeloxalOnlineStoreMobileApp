import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/mainfrfr.dart';
import 'package:flutter_application_1/notifier.dart';
import 'package:flutter_application_1/pages/Register.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _navigateBottom(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  int currentIndex = 0;
  final List pages = const [
    HomePage(),
    Register(),
  ];

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Veloxal"),
          leading: ElevatedButton(
              onPressed: () {
                MenuBar(
                  children: [
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              print("hello");
                            },
                            child: const Text("Hello"))
                      ],
                    )
                  ],
                );
              },
              child: const Icon(Icons.menu)),
        ),
        body: Center(
          heightFactor: double.infinity,
          widthFactor: double.infinity,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.all(10)),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Welcome to Veloxal",
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                ),
                Image.asset(
                  "images/cat.jpg",
                  scale: 10,
                ),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your username',
                        labelStyle: TextStyle(color: Colors.black)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your Password',
                        labelStyle: TextStyle(color: Colors.black)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5)),
                FilledButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const Mainfrfr();
                      },
                    ));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text("Not a user yet? "),
                      const Padding(padding: EdgeInsets.all(5)),
                      FilledButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const Register();
                            },
                          ));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                        child: const Text(
                          "Click Here to Register",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              isDarkMode.value = !isDarkMode.value;
            },
            child: ValueListenableBuilder(
              valueListenable: isDarkMode,
              builder: (context, isDark, child) {
                if (!isDark) {
                  return const Icon(Icons.dark_mode);
                } else {
                  return const Icon(Icons.light_mode);
                }
              },
            )),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: "home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "social", icon: Icon(Icons.people)),
            BottomNavigationBarItem(label: "Shop", icon: Icon(Icons.shop))
          ],
          currentIndex: selectedIndex,
          onTap: _navigateBottom,
        ));
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
