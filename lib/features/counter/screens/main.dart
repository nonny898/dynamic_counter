import 'package:dynamic_counter/features/counter/widgets/action_buttons.dart';
import 'package:dynamic_counter/features/counter/widgets/list/container.dart';
import 'package:dynamic_counter/features/counter/widgets/list/total.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CounterActionButtons(),
            SizedBox(height: 16),
            CounterTotal(),
            Expanded(child: CounterListContainer()),
          ],
        ),
      ),
    );
  }
}
