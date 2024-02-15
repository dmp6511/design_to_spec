import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

// applying themes and fonts
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Retro Computer"),
      debugShowCheckedModeBanner: false,
      home: const MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar features
      appBar: AppBar(
        title: const Text("Project 1: Design to Spec"),
        elevation: 20,

        // adding the Profile Button
        actions: [
          IconButton(
              onPressed: showAlertDialog,
              icon: const Icon(Icons.account_circle_sharp))
        ],
      ),
      body: const Column(
        children: [
          Center(
            child: Text(
              "hello world",
              style: TextStyle(fontFamily: 'VT323'),
            ),
          ),
        ],
      ),
    );
  }

  // pop dialog function
  void showAlertDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("About button dialog"),
          content: const Text("Created by De'Andre Perry - IGME 340"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("aight coo"),
            ),
            const TextButton(
              onPressed: null,
              child: Text("nvm bro"),
            ),
          ],
        );
      },
    );
  }
}
