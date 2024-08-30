import 'package:dynamic_counter/features/counter/screens/main.dart';
import 'package:dynamic_counter/features/favorite/screens/main.dart';
import 'package:dynamic_counter/features/setting/screens/main.dart';
import 'package:flutter/material.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({super.key});

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  int _selectedIndex = 0;

  NavigationDestination _destinationBuilder(
      IconData selectedIcon, IconData defaultIcon) {
    return NavigationDestination(
      selectedIcon: Icon(
        selectedIcon,
        color: Colors.grey[800],
        size: 30,
      ),
      icon: Icon(
        defaultIcon,
        color: Colors.grey[400],
        size: 30,
      ),
      label: '',
    );
  }

  List<Widget> get _destinations => <Widget>[
        _destinationBuilder(Icons.home_rounded, Icons.home_outlined),
        _destinationBuilder(Icons.favorite_rounded, Icons.favorite_outline),
        _destinationBuilder(Icons.settings_rounded, Icons.settings_outlined),
      ];

  Widget _body() {
    switch (_selectedIndex) {
      case 0:
        return CounterScreen();
      case 1:
        return FavoriteScreen();
      default:
        return SettingsScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white70,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        height: 56,
        destinations: _destinations,
        indicatorColor: Colors.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      ),
    );
  }
}
