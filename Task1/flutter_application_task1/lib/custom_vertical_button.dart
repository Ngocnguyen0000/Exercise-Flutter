import 'package:flutter/material.dart';

class CustomVerticalButton extends StatelessWidget {
  const CustomVerticalButton({
    super.key,
    required this.color,
    required this.iconData,
    required this.label,
  });

  final Color color;
  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}