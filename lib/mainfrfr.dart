import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tshirts.dart';

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
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          ElevatedButton(
                              onPressed: () => {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return const TShirts();
                                      },
                                    ))
                                  },
                              child: const Text("TShirts")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return Scaffold(
                                      appBar: AppBar(
                                        title: const Text("Wtf lmao"),
                                      ),
                                    );
                                  },
                                ));
                              },
                              child: const Text("Hoodies")),
                          ElevatedButton(
                              onPressed: () {}, child: const Text("Cases")),
                          ElevatedButton(
                              onPressed: () {}, child: const Text("Shoes")),
                        ],
                      ),
                    ),
                    const Text(
                      "Home",
                      style: TextStyle(fontSize: 28),
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    ElevatedButton(
                        onPressed: () => {},
                        child: Card(
                          margin: const EdgeInsets.all(10),
                          color: Colors.black,
                          clipBehavior: Clip.hardEdge,
                          child: Image.network(
                            "https://img.freepik.com/free-psd/isolated-white-t-shirt-front-view_125540-1194.jpg?size=626&ext=jpg&ga=GA1.1.1803636316.1701043200&semt=ais",
                          ),
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
