import 'package:dots_indicator/dots_indicator.dart';
import 'package:firstquiz/Widgets/FirstWidget/CustomCarouselSlider.dart';
import 'package:firstquiz/Widgets/FirstWidget/ExercisesItem.dart';
import 'package:firstquiz/Widgets/FirstWidget/FeelingWidget.dart';
import 'package:firstquiz/Widgets/WidgetHeader.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstWidget extends StatelessWidget {
  PageController controller = PageController();
   FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {

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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
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
                      text: 'Sara Rose',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeelingWidget(Title: "Love", IconImage: "assets/icons/LoveIcon.png",),
                FeelingWidget(Title: "Cool", IconImage: "assets/icons/CoolIcon.png",),
                FeelingWidget(Title: "Happy", IconImage: "assets/icons/HappyIcon.png",),
                FeelingWidget(Title: "Sad", IconImage: "assets/icons/SadIcon.png",),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
           WidgetHeader(Title: "Feature", SecondTitle: "See More"),
            const SizedBox(
              height: 20,
            ),
            ImageSlideshow(
            width: double.infinity,
            height: 200,
            initialPage: 0,
            indicatorColor: Colors.blue,
            indicatorBackgroundColor: Colors.grey,
            children: [
              CustomCarouselSlider(BackGroundColor: Color(0xffECFDF3),ImagePhoto: "assets/Walking the Dog.png",),
              CustomCarouselSlider(BackGroundColor: Color(0xffAFC3C9FF),ImagePhoto: "assets/Walking the Dog.png",),
              CustomCarouselSlider(BackGroundColor: Color(0xffC0B2CCFF),ImagePhoto: "assets/Walking the Dog.png",),
            ],
            onPageChanged: (value) {
            print('Page changed: $value');
            },
            autoPlayInterval: 3000,

            isLoop: true,
            ),
            const SizedBox(
              height: 60,
            ),
            WidgetHeader(Title: "Exercise", SecondTitle: "See More"),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(
              ),
              shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                  childAspectRatio: 2.8,
                ),
                itemCount: 4,
                itemBuilder: (context, index) => ExerciseItem(
                      BackgroundColor: ListOfColorIcon[index],
                      IconImage:ListOfIcons[index],
                      Title: ListOfTitle[index],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
