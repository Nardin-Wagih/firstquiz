import 'package:flutter/material.dart';

class FeelingWidget extends StatelessWidget {
  final String Title;
  final String IconImage;
  const FeelingWidget({super.key, required this.Title, required this.IconImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 7),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: const Color(0xffE4E7EC),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Image.asset(IconImage),
        ),
        SizedBox(height: 10,),
        Text(Title, style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),)
      ],
    );
  }
}
