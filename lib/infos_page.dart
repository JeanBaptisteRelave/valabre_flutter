import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  InfoPage({super.key});

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informations'),
      ),
      body: Center(child: Text('Informations')),
    );
  }
}
