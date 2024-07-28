import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: const Color.fromARGB(255, 165, 42, 160),
        //titleTextStyle: const  TextStyle(Color(Colors.white));
      ),
      body: ContentWidget(),
    );
  }
}

class ContentWidget extends StatefulWidget {
  const ContentWidget({super.key});

  @override
  State<ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Home Page"),
    );
  }
}
