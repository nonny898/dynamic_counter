import 'package:dynamic_counter/core/models/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Should return a Column widget with the following children:
    // 1. An ElevatedButton with the text 'Add Counter' that calls the addCounter method from the CounterModel
    // 2. An ElevatedButton with the text 'Remove Counter' that calls the removeLastCounter method from the CounterModel
    // 3. An ElevatedButton with the text 'Reset Counter' that calls the resetCounter method from the CounterModel

    var model = context.watch<CounterModel>();

    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            model.addCounter();
          },
          child: Text('Add Counter'),
        ),
        ElevatedButton(
          onPressed: () {
            model.removeLastCounter();
          },
          child: Text('Remove Counter'),
        ),
        ElevatedButton(
          onPressed: () {
            model.resetCounter();
          },
          child: Text('Reset Counter'),
        ),
      ],
    );
  }
}
