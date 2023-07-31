import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/global/global.dart';

class CsBottomNavigationBar extends StatefulWidget {
  const CsBottomNavigationBar({super.key});

  @override
  State<CsBottomNavigationBar> createState() => _CsBottomNavigationBarState();
}

class _CsBottomNavigationBarState extends State<CsBottomNavigationBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Corporate',
      style: optionStyle,
    ),
    Text(
      'Index 2: Wiki',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colorof.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Corporate',
            backgroundColor: Colorof.secondaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Wiki',
            backgroundColor: Colorof.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colorof.secondaryColor,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colorof.secondaryLightColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
