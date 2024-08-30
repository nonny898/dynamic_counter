import 'package:dynamic_counter/core/models/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterModel = context.watch<CounterModel>();
    final total = counterModel.total;

    return Text(
      'Total: $total',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
