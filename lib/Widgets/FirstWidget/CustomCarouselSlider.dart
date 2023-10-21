import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatelessWidget {
  final Color BackGroundColor;
  final String ImagePhoto;
  const CustomCarouselSlider({super.key, required this.BackGroundColor, required this.ImagePhoto});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: BackGroundColor,
        borderRadius: BorderRadius.circular(25),
      ),
      width: double.infinity,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Positive vibes", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
              Text("Boots your mood with\n positive vibes", style: TextStyle(
                fontSize: 16,
              ),
              ),
              Row(
                children: [
                  Icon(Icons.play_circle, color: Color(0xff32D583),),
                  SizedBox(width: 5,),
                  Text("10 mins"),
                ],
              )
            ],
          ),
          
          Expanded(child: Image.asset(ImagePhoto)),
        ],
      ),
    );
  }
}
