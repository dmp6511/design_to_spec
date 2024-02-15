// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

// applying themes and fonts
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
// imgs and svgs

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar features
      appBar: AppBar(
        // pickaxe svg
        backgroundColor: const Color(0x0f686868),

        // title
        title: const Text("Trees & Wood", textAlign: TextAlign.center),
        elevation: 20,
        // adding the Profile Button
        actions: [
          IconButton(
            onPressed: showAlertDialog,
            icon: Icon(Icons.account_circle_sharp),
            iconSize: 25,
          )
        ],
      ),
      body: Container(
        color: Color(0x0f35363d),
        child: Column(
          children: [
            Image.asset(
              "assets/images/trees.jpg",
              width: double.infinity,
              height: double.infinity,
            ),
            // background image

            // oak tree container
            Column(children: [
              Text('The Oak Tree'),
              SizedBox(
                width: 400,
                height: 400,
                child: Placeholder() //Image.asset('assets/images/oaktree.png',
                   // alignment: Alignment.center),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  // popup dialog function
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
              child: const Text("OK"),
            ),
            const TextButton(
              onPressed: null,
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );
  }
}
