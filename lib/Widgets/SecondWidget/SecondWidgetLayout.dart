import 'package:firstquiz/Widgets/SecondWidget/ItemOf2Page.dart';
import 'package:firstquiz/Widgets/SecondWidget/WorkOutPrograms.dart';
import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30,),
          Container(
               height: 100,
               width: 350,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(25),
                 color: const Color(0xffe8e6ecff).withOpacity(0.3),
               ),
               child: Padding(
                 padding: const EdgeInsets.all(12),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const ItemsOf2Page(IconImage: "assets/icons/heart.png", Title: "Heart Rate",Comment: "81BPM",),
                     Container(
                       margin: const EdgeInsets.symmetric(horizontal: 15),
                       width: 2,
                       color: const Color(0xffD9D9D9),
                     ),
                     const ItemsOf2Page(IconImage: "assets/icons/list.png", Title: "To-do", Comment: "32,5%"),
                     Container(
                       margin: const EdgeInsets.symmetric(horizontal: 15),
                       width: 2,
                       color: const Color(0xffD9D9D9),
                     ),
                     const ItemsOf2Page(IconImage: "assets/icons/Frame.png", Title: "Calo", Comment: "1000 Cal"),
                   ],
                 ),
               ),
             ),
          const SizedBox(height: 30,),
          const Text("Workout Programs", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),),
          const SizedBox(height: 40,),
          Expanded(
            child: ContainedTabBarView(
              tabs: const [
                Text('All Type', style: TextStyle(
                  color: Colors.black,
                ),),
                Text('Full Body',style: TextStyle(
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
                  itemBuilder: (context, index) => const WorkOutProgram(),
                  itemCount: 20,
                    ),
                ListView.builder(
                  itemBuilder: (context, index) => const WorkOutProgram(),
                  itemCount: 20,
                ),
                ListView.builder(
                  itemBuilder: (context, index) => const WorkOutProgram(),
                  itemCount: 20,
                ),
                ListView.builder(
                  itemBuilder: (context, index) => const WorkOutProgram(),
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
