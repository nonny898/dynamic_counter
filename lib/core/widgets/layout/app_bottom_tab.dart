import 'package:dynamic_counter/features/counter/screens/main.dart';
import 'package:dynamic_counter/features/favorite/screens/main.dart';
import 'package:dynamic_counter/features/setting/screens/main.dart';
import 'package:flutter/cupertino.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({super.key});

  Widget _getTab(int index) {
    switch (index) {
      case 1:
        return FavoriteScreen();
      case 2:
        return SettingsScreen();
      default:
        return CounterScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      controller: CupertinoTabController(),
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart)),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings)),
      ]),
      tabBuilder: (context, index) => CupertinoTabView(
        builder: (context) => _getTab(index),
      ),
    );
  }
}
