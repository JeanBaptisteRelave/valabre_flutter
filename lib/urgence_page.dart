import 'package:flutter/material.dart';

class UrgencePage extends StatefulWidget {
  UrgencePage({super.key});

  @override
  _UrgencePageState createState() => _UrgencePageState();
}

class _UrgencePageState extends State<UrgencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Urgence'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "En cas d'urgence, vous pouvez appeler :",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 75),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              child: const Text('Pompier (18)'),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              child: const Text('Samu (15)'),
            ),
          ],
        ),
      ),
    );
  }
}
