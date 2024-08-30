import 'package:dynamic_counter/core/models/counter.dart';
import 'package:dynamic_counter/core/routes/app_route_builder.dart';
import 'package:dynamic_counter/core/widgets/layout/app_bottom_tab.dart';
import 'package:flutter/material.dart';
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
      child: MaterialApp(
        title: 'Counter App',
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.grey[200],
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey[100],
            titleTextStyle: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.w600),
            iconTheme: IconThemeData(color: Colors.grey[600]),
          ),
        ),
        onGenerateRoute: routeBuilder,
        home: AppBottomBar(),
      ),
    );
  }
}
