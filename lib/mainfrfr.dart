import 'package:flutter/material.dart';

class Mainfrfr extends StatefulWidget {
  const Mainfrfr({super.key});

  @override
  State<Mainfrfr> createState() => _MainfrfrState();
}

class _MainfrfrState extends State<Mainfrfr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main"),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Text(
                      "Welcome to Veloxal",
                      style: TextStyle(fontSize: 28),
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    Card(
                      child: Image.network(
                        "https://img.freepik.com/free-psd/isolated-white-t-shirt-front-view_125540-1194.jpg?size=626&ext=jpg&ga=GA1.1.1803636316.1701043200&semt=ais",
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () => {}, child: const Text("TShirts")),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
