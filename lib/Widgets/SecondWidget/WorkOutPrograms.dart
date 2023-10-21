import 'package:flutter/material.dart';

class WorkOutProgram extends StatelessWidget {
  const WorkOutProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 30,),
          height: 170,
          width: 300,
          decoration: BoxDecoration(
            color: Color(0xffE8E6ECFF).withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffE4E7EC),
                      ),
                      child: Text("7 days", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),),
                    ),
                    SizedBox(height: 10),
                    Text("Morning Yoga", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text("Improve mental focus.", style: TextStyle(
                      fontSize: 18,
                    ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.access_time_sharp, color: Colors.black, size: 14,),
                        Text("30 mins"),
                      ],
                    )
                  ],
                ),
              ),
              Image.asset("assets/WorkOut.png", width: 80, height: 80,),
            ],
          ),
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}
