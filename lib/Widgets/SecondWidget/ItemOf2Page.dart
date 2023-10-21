import 'package:flutter/material.dart';

class ItemsOf2Page extends StatelessWidget {
  final String IconImage;
  final String Title;
  final String Comment;
  const ItemsOf2Page(
      {super.key,
      required this.IconImage,
      required this.Title,
      required this.Comment});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(IconImage,height: 20, width: 20,),
            Text(Title, style: TextStyle(
              fontSize: 16
            ),),
          ],
        ),
        Text(Comment, style: TextStyle(
            fontSize: 16,
          fontWeight: FontWeight.bold
        ),),
      ],
    );
  }
}
