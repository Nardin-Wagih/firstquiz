import 'package:flutter/material.dart';

class ExerciseItem extends StatelessWidget {
  final String Title;
  final Color BackgroundColor;
  final String IconImage;
  const ExerciseItem({super.key, required this.Title, required this.BackgroundColor, required this.IconImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: BackgroundColor,
      ),
      child: Row(
        children: [
          Image.asset(IconImage),
          SizedBox(width: 20,),
          Text(Title, style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),
        ],
      ),
    );
  }
}
