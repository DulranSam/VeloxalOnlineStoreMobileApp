import 'package:flutter/material.dart';

class TShirts extends StatelessWidget {
  const TShirts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tshirts"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "Hello Dulran, how may we help you?",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5),
          ),
          ElevatedButton(
            onPressed: () => {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text("Testing"),
                    ),
                  );
                },
              ))
            },
            child: Card(
              color: Colors.amber,
              child: Image.network(
                "https://hips.hearstapps.com/hmg-prod/images/2024-lamborghini-revuelto-127-641a1d518802b.jpg?crop=0.813xw:0.721xh;0.0994xw,0.128xh&resize=1200:*",
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
