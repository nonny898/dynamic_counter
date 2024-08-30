import 'package:dynamic_counter/core/models/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterCard extends StatelessWidget {
  final int index;

  const CounterCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final counterModel = context.watch<CounterModel>();
    final counter = counterModel.counterList[index];

    return Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: Row(
          children: [
            IconButton(
              padding: EdgeInsets.all(12),
              icon: Icon(Icons.remove),
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  elevation: WidgetStatePropertyAll(2),
                  shadowColor: WidgetStatePropertyAll(Colors.grey),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)))),
              onPressed: () => counterModel.decrementCounter(index),
            ),
            Expanded(
                child: Text(
              counter.toString(),
              textAlign: TextAlign.center,
            )),
            IconButton(
              padding: EdgeInsets.all(12),
              icon: Icon(Icons.add),
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  elevation: WidgetStatePropertyAll(2),
                  shadowColor: WidgetStatePropertyAll(Colors.grey),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)))),
              onPressed: () => counterModel.incrementCounter(index),
            ),
          ],
        ));
    // Card(
    //   margin: EdgeInsets.only(bottom: 8),
    //   child: ListTile(
    //     title: Text(
    //       counter.toString(),
    //       textAlign: TextAlign.center,
    //     ),
    //     titleAlignment: ListTileTitleAlignment.center,
    //     leading: IconButton(
    //       icon: Icon(Icons.remove),
    //       onPressed: () => counterModel.decrementCounter(counter),
    //     ),
    //     trailing: IconButton(
    //       icon: Icon(Icons.add),
    //       onPressed: () => counterModel.incrementCounter(counter),
    //     ),
    //   ),
    // );
  }
}
