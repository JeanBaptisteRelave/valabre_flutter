import 'package:flutter/material.dart';

import 'infos_page.dart';
import 'map_page.dart';
import 'urgence_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screen = [UrgencePage(), MapPage(), InfoPage()];

  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.phone,
            ),
            label: 'Urgence',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
            ),
            label: 'Carte',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
            ),
            label: 'Infos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 207, 47, 47),
      ),
    );
  }
}
