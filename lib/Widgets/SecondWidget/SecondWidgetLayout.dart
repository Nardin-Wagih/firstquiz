import 'package:firstquiz/Widgets/SecondWidget/ItemOf2Page.dart';
import 'package:firstquiz/Widgets/SecondWidget/WorkOutPrograms.dart';
import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Container(
               height: 100,
               width: 350,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(25),
                 color: Color(0xffE8E6ECFF).withOpacity(0.3),
               ),
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                 child: Row(
                   children: [
                     ItemsOf2Page(IconImage: "assets/icons/heart.png", Title: "Heart Rate",Comment: "81BPM",),
                     Container(
                       margin: EdgeInsets.symmetric(horizontal: 15),
                       width: 2,
                       color: Color(0xffD9D9D9),
                     ),
                     ItemsOf2Page(IconImage: "assets/icons/list.png", Title: "To-do", Comment: "32,5%"),
                     Container(
                       margin: EdgeInsets.symmetric(horizontal: 15),
                       width: 2,
                       color: Color(0xffD9D9D9),
                     ),
                     ItemsOf2Page(IconImage: "assets/icons/Frame.png", Title: "Calo", Comment: "1000 Cal"),
                   ],
                 ),
               ),
             ),
          SizedBox(height: 30,),
          Text("Workout Progtams", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),),
          SizedBox(height: 40,),
          Expanded(
            child: ContainedTabBarView(
              tabs: [
                Text('All Type', style: TextStyle(
                  color: Colors.black,
                ),),
                Text('Full Budy',style: TextStyle(
                  color: Colors.black,
                ),),
                Text('Upper',style: TextStyle(
                  color: Colors.black,
                ),),
                Text('Lower',style: TextStyle(
                  color: Colors.black,
                ),),
              ],
              views: [
                ListView.builder(
                  itemBuilder: (context, index) => WorkOutProgram(),
                  itemCount: 20,
                    ),
                ListView.builder(
                  itemBuilder: (context, index) => WorkOutProgram(),
                  itemCount: 20,
                ),
                ListView.builder(
                  itemBuilder: (context, index) => WorkOutProgram(),
                  itemCount: 20,
                ),
                ListView.builder(
                  itemBuilder: (context, index) => WorkOutProgram(),
                  itemCount: 20,
                ),
              ],
              onChange: (index) => print(index),
            ),
          ),
        ],
      ),
    );
  }
}
