import 'package:flutter/material.dart';

class GeneralButtonCofig {
  final String label;
  final IconData? icon;
  final VoidCallback onPressed;

  GeneralButtonCofig({
    required this.label,
    required this.onPressed,
    this.icon,
  });

  Color get defaultColor => Colors.grey.shade800;

  TextStyle get defaultTextStyle => TextStyle(
        color: defaultColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );
}

class GeneralButton extends StatelessWidget {
  const GeneralButton({super.key, required this.config});

  final GeneralButtonCofig config;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.white),
        overlayColor: WidgetStatePropertyAll(Colors.grey.shade200),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      onPressed: config.onPressed,
      child: config.icon != null
          ? Row(
              children: [
                Icon(
                  config.icon,
                  color: config.defaultColor,
                ),
                SizedBox(width: 4),
                Text(
                  config.label,
                  style: config.defaultTextStyle,
                ),
              ],
            )
          : Text(
              config.label,
              style: config.defaultTextStyle,
            ),
    );
  }
}
