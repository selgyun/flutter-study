import 'package:example/photo_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Example"),
            ),
            body: Center(
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      const Text("Press here"),
                      ElevatedButton(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const PhotoScreen())),
                        child: const Text("cat Photo"),
                      )
                    ],
                  ),
                )
            )
        )
    );
  }
}