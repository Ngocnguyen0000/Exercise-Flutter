import 'package:flutter/material.dart';
import 'custom_vertical_button.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomVerticalButton(
            color: color,
            iconData: Icons.call,
            label: 'CALL',
          ),
          CustomVerticalButton(
            color: color,
            iconData: Icons.near_me,
            label: 'ROUTE',
          ),
          CustomVerticalButton(
            color: color,
            iconData: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}