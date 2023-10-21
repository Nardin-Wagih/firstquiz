import 'package:firstquiz/Widgets/FirstWidget/ExercisesItem.dart';
import 'package:firstquiz/Widgets/FirstWidget/ReactWidget.dart';
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
      const Color(0xffECFDF3),
      const Color(0xffAFC3C9FF),
      const Color(0xffC0B2CCFF),
    ];

    List<String> ListOfIcons = [
      "assets/icons/Relaxation.png",
      "assets/icons/Meditation.png",
      "assets/icons/Beathing.png",
      "assets/icons/Yoga.png",
    ];

    List<Color> ListOfColorIcon = [
      const Color(0xffF9F5FF),
      const Color(0xffFDF2FA),
      const Color(0xffFFFAF5),
      const Color(0xffF0F9FF),
    ];

    List<String> ListOfTitle = [
      "Relaxation",
      "Meditation",
      "Beathing",
      "Yoga",
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'Hello,',
              style: DefaultTextStyle.of(context).style.copyWith(
                    fontSize: 20,
                  ),
              children: const <TextSpan>[
                TextSpan(
                    text: ' Sara Rose',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "How are you feeling today ?",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //add the label
                children: [
                  ReactWidget(title: "Love", imagePath: "assets/icons/LoveIcon.png",),
                  ReactWidget(title: "Cool", imagePath: "assets/icons/CoolIcon.png",),
                  ReactWidget(title: "Happy", imagePath: "assets/icons/HappyIcon.png",),
                  ReactWidget(title: "Sad", imagePath: "assets/icons/SadIcon.png",),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
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
          const SizedBox(
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
          const SizedBox(
            height: 60,
          ),
          const Row(
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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
