import 'package:flutter/cupertino.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Counter',
          style: TextStyle(color: CupertinoColors.systemGrey),
        ),
      ),
      child: Center(
        child: Text('Counter Page'),
      ),
    );
  }
}
