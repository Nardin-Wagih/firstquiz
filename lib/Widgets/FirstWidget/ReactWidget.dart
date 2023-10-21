import 'package:flutter/material.dart';

class ReactWidget extends StatelessWidget {
  String title;
  String imagePath;
  ReactWidget({required this.title , required this.imagePath});
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
          child: Image.asset(imagePath),
        ),
        const SizedBox(height: 10,),
        Text(title,
          style: const TextStyle(
              fontSize: 14
          ),
        )
      ],
    );
  }
}
