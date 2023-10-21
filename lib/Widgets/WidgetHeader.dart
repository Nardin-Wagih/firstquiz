import 'package:flutter/material.dart';

class WidgetHeader extends StatelessWidget {
  final String Title;
  final String SecondTitle;
  const WidgetHeader({super.key, required this.Title, required this.SecondTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          Title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Expanded(child: SizedBox()),
        Text(
          SecondTitle,
          style: TextStyle(
            color: Color(0xff027A48),
            fontSize: 16,
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Color(0xff027A48),
          size: 16,
        ),
      ],
    );
  }
}
