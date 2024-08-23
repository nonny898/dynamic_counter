import 'package:dynamic_counter/core/models/counter.dart';
import 'package:dynamic_counter/core/routes/app_route_builder.dart';
import 'package:dynamic_counter/core/widgets/layout/app_bottom_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: CupertinoApp(
        title: 'Counter App',
        theme: CupertinoThemeData(
            primaryColor: CupertinoColors.systemBlue.darkColor,
            barBackgroundColor: CupertinoColors.systemGrey6.darkColor,
            scaffoldBackgroundColor: CupertinoColors.systemGrey3.darkColor),
        onGenerateRoute: routeBuilder,
        home: AppBottomBar(),
      ),
    );
  }
}
