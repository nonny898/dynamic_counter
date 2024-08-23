import 'package:flutter/cupertino.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Favorite',
          style: TextStyle(color: CupertinoColors.systemGrey),
        ),
      ),
      child: Center(
        child: Text('Favorite Screen'),
      ),
    );
  }
}
