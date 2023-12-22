import 'package:flutter/material.dart';

class Hoodies extends StatelessWidget {
  const Hoodies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hoodies"),
      ),
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Card(
                child: Text(
                  "Hoodies",
                  style: TextStyle(fontSize: 32),
                  
                ),
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: const Text("Go back"),
                                ),
                              );
                            },
                          ));
                        },
                        child: const Text(
                          "Hello Rukshan click me",
                          style: TextStyle(fontSize: 32),
                        ))
                  ]),
            ],
          )),
    );
  }
}
