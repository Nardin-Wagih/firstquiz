import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:firstquiz/Widgets/ThirdWidget/CustomTab.dart';
import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class ThirdWidget extends StatefulWidget {
  const ThirdWidget({super.key});

  @override
  State<ThirdWidget> createState() => _ThirdWidgetState();
}

class _ThirdWidgetState extends State<ThirdWidget> {
  List<String> tabs = [
    "Discover",
    "News",
    "Most Viewed",
    "Saved"
  ];

  List<String> Images = [
    "assets/Frame 3466530.png",
    "assets/Frame 34665301.png",
    "assets/Frame 3466530.png",
    "assets/Frame 34665301.png",
    "assets/Frame 3466530.png",
    "assets/Frame 34665301.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      color: const Color(0xffE4E7EC),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 290,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.search_outlined,
                  color: Color(0xff667085),
                ),
                Text(
                  "Articales, Video, Audio and More, ....",
                  style: TextStyle(color: Color(0xff667085), fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tabs.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomTab(Title: tabs[index],),
            ),
          ),
          const SizedBox(height: 30,),
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot Topics",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xff5925DC),
                    fontSize: 14,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff5925DC),
                  size: 16,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => Image.asset(Images[index], width: 250,height: 300,),
                itemCount: Images.length,
                separatorBuilder: (context, index) => const SizedBox(width: 5,),
                scrollDirection: Axis.horizontal,
              )),
          const SizedBox(height: 30,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Get Tips",
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
          const SizedBox(height: 30,),
          Container(
            width: double.infinity,
            height: 200,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xffE8E6ECFF),
            ),
            child: Row(
              children: [
                Image.asset("assets/Doctor.png",width: 100, height: 200,),
                const SizedBox(width: 70,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    children: [
                      const Text("Connect with doctors &\n get suggestions", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      ),
                      const Text("Connect now and get\n expert insights", style: TextStyle(
                        fontSize: 16,
                      ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color(0xff7F56D9)) ,
                        ),
                          onPressed: (){},
                          child: const Text("View detail", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),)
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30,),
          const Row(
            children: [
              Text(
                "Cycle phases and period",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 120,
              ),
              Text(
                "See all",
                style: TextStyle(
                  color: Color(0xff5925DC),
                  fontSize: 14,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff5925DC),
                size: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
