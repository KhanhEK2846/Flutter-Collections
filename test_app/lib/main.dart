import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Test Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                boxContainer("Box 1", Alignment.topLeft, Colors.red),
                boxContainer("Box 2", Alignment.topRight, Colors.green)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                boxContainer("Box 3", Alignment.bottomLeft, Colors.purple),
                boxContainer("Box 4", Alignment.bottomRight, Colors.yellow)
              ],
            ),
          ]),
          Center(
              child: boxContainer(
                  "Hello world", Alignment.center, Colors.orange, true))
        ],
      ),
    );
  }

  Container boxContainer(String name, Alignment direct, Color color,
      [bool boxRadius = false]) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(boxRadius ? 100 : 0)),
      alignment: direct,
      width: 150,
      height: 150,
      child: Text(
        name,
        style: const TextStyle(fontSize: 24, color: Colors.blueAccent),
      ),
    );
  }
}
