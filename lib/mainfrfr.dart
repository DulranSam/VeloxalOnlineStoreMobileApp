import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tshirts.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_application_1/pages/hoodies.dart';

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
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
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
                                    return const Hoodies();
                                  },
                                ));
                              },
                              child: const Text("Hoodies")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return Scaffold(
                                      appBar: AppBar(
                                        title: const Text("Cases"),
                                      ),
                                      body: const SizedBox(
                                          height: double.infinity,
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Cases",
                                                style: TextStyle(fontSize: 32),
                                              )
                                            ],
                                          )),
                                    );
                                  },
                                ));
                              },
                              child: const Text("Cases")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return Scaffold(
                                      appBar: AppBar(
                                        title: const Text("Shoes"),
                                      ),
                                      body: const SizedBox(
                                          height: double.infinity,
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Shoes",
                                                style: TextStyle(fontSize: 32),
                                              )
                                            ],
                                          )),
                                    );
                                  },
                                ));
                              },
                              child: const Text("Shoes")),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    const Text(
                      "Featured",
                      style: TextStyle(fontSize: 32),
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    ElevatedButton(
                        onPressed: () => {},
                        child: Card(
                          margin: const EdgeInsets.all(10),
                          color: Colors.black,
                          clipBehavior: Clip.hardEdge,
                          child: Column(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-psd/isolated-white-t-shirt-front-view_125540-1194.jpg?size=626&ext=jpg&ga=GA1.1.1803636316.1701043200&semt=ais",
                              ),
                              const Text(
                                "Main TShirt",
                                style: TextStyle(color: Colors.white),
                              ),
                              const Text(
                                "The main tshirt lol",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )),
                    ElevatedButton(
                        onPressed: () => {},
                        child: Card(
                          margin: const EdgeInsets.all(10),
                          color: Colors.black,
                          clipBehavior: Clip.hardEdge,
                          child: Column(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-psd/isolated-white-t-shirt-front-view_125540-1194.jpg?size=626&ext=jpg&ga=GA1.1.1803636316.1701043200&semt=ais",
                              ),
                              const Text(
                                "Main TShirt",
                                style: TextStyle(color: Colors.white),
                              ),
                              const Text(
                                "The main tshirt lol",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )),
                    // ElevatedButton(
                    //     onPressed: () => {},
                    //     child: Card(
                    //       margin: const EdgeInsets.all(10),
                    //       color: Colors.black,
                    //       clipBehavior: Clip.hardEdge,
                    //       child: Image.network(
                    //         "https://img.freepik.com/free-psd/isolated-white-t-shirt-front-view_125540-1194.jpg?size=626&ext=jpg&ga=GA1.1.1803636316.1701043200&semt=ais",
                    //       ),
                    //     )),
                    // ElevatedButton(
                    //     onPressed: () => {},
                    //     child: Card(
                    //       margin: const EdgeInsets.all(10),
                    //       color: Colors.black,
                    //       clipBehavior: Clip.hardEdge,
                    //       child: Image.network(
                    //         "https://img.freepik.com/free-psd/isolated-white-t-shirt-front-view_125540-1194.jpg?size=626&ext=jpg&ga=GA1.1.1803636316.1701043200&semt=ais",
                    //       ),
                    //     ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
