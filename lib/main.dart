import 'package:flutter/material.dart';
import 'package:flutter_application_1/notifier.dart';
import "./pages/homePage.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkMode,
      builder: (context, isDark, child) {
        return MaterialApp(
          title: "Veloxal",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              useMaterial3: true,
              brightness: isDark ? Brightness.dark : Brightness.light),
          home: const HomePage(),
        );
      },
    );
  }
}
