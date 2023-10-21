import 'package:firstquiz/Widgets/FirstWidget/ExercisesItem.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> ListOfImages = [
      "assets/Walking the Dog.png",
      "assets/Walking the Dog.png",
      "assets/Walking the Dog.png",
    ];

    List<Color> ListOfColor = [
      Color(0xffECFDF3),
      Color(0xffAFC3C9FF),
      Color(0xffC0B2CCFF),
    ];

    List<String> ListOfIcons = [
      "assets/icons/Relaxation.png",
      "assets/icons/Meditation.png",
      "assets/icons/Beathing.png",
      "assets/icons/Yoga.png",
    ];

    List<Color> ListOfColorIcon = [
      Color(0xffF9F5FF),
      Color(0xffFDF2FA),
      Color(0xffFFFAF5),
      Color(0xffF0F9FF),
    ];

    List<String> ListOfTitle = [
      "Relaxation",
      "Meditation",
      "Beathing",
      "Yoga",
    ];
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row(
          //   children: [
          //     Image.asset("assets/logo.png"),
          //     SizedBox(
          //       width: 20,
          //     ),
          //     Text(
          //       "Moody",
          //       style: TextStyle(
          //           fontSize: 22,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black),
          //     ),
          //     //nenenenenenenenenenenenenenenene
          //     SizedBox(
          //       width: 170,
          //     ),
          //     ImageIcon(
          //       AssetImage("assets/icons/NotificationIcon.png"),
          //       size: 20,
          //     )
          //   ],
          // ),
          RichText(
            text: TextSpan(
              text: 'Hello,',
              style: DefaultTextStyle.of(context).style.copyWith(
                    fontSize: 20,
                  ),
              children: const <TextSpan>[
                TextSpan(
                    text: 'Sara Rose',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "How are you feeling today ?",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              //add the label
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xffE4E7EC),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Image.asset("assets/icons/LoveIcon.png"),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xffE4E7EC),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Image.asset("assets/icons/CoolIcon.png"),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xffE4E7EC),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Image.asset("assets/icons/HappyIcon.png"),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xffE4E7EC),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Image.asset("assets/icons/SadIcon.png"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Feature",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 180,
              ),
              Text(
                "See More",
                style: TextStyle(
                  color: Color(0xff027A48),
                  fontSize: 14,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff027A48),
                size: 16,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CarouselSlider.builder(
            itemCount: 3,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ListOfColor[itemIndex],
                  ),
                  width: 300,
                ),
                // Positioned(
                //   bottom: 1,
                //     top: 8,
                //     left: 160,
                //
                //     child: Image.asset(ListOfImages[itemIndex], height: 150, width: 70,)),
              ],
            ),
            options: CarouselOptions(height: 200),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Text(
                "Exercise",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 180,
              ),
              Text(
                "See More",
                style: TextStyle(
                  color: Color(0xff027A48),
                  fontSize: 14,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff027A48),
                size: 16,
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                ),
                itemCount: 4,
                itemBuilder: (context, index) => ExerciseItem(
                      BackgroundColor: ListOfColorIcon[index],
                      IconImage:ListOfIcons[index],
                      Title: ListOfTitle[index],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
