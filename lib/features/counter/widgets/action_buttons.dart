import 'package:dynamic_counter/core/models/counter.dart';
import 'package:dynamic_counter/core/widgets/button/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterModel = context.watch<CounterModel>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GeneralButton(
            config: GeneralButtonCofig(
                label: 'Add Counter',
                icon: Icons.add,
                onPressed: counterModel.addCounter)),
        GeneralButton(
            config: GeneralButtonCofig(
                label: 'Remove Counter',
                icon: Icons.remove,
                onPressed: counterModel.removeLastCounter)),
      ],
    );
  }
}
