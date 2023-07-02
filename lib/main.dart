import 'package:document_manager/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'Header/base_header_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Hello"), centerTitle: true),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
            child: BaseHeaderScreen(
              title: "Hello",
              isHiddenButtonRight: true,
            ),
          ),
          Expanded(
              flex: 1,
              child: ListView()
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
