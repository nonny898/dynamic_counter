import 'package:dynamic_counter/core/models/counter.dart';
import 'package:dynamic_counter/features/counter/widgets/list/card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterModel = context.watch<CounterModel>();

    return ListView.builder(
      itemCount: counterModel.counterList.length,
      itemBuilder: (context, index) {
        return CounterCard(index: index);
      },
    );
  }
}
