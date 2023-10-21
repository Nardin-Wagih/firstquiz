import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {

  final String Title;
  const CustomTab({super.key, required this.Title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 30,
      width: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Colors.grey
        ),
        color: Colors.transparent
      ),
      child: Text(
        Title, style: TextStyle(
        color: Color(0xff667085),
        fontSize: 18,
        fontWeight: FontWeight.bold
      ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
