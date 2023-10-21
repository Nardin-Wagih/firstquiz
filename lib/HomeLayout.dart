import 'package:firstquiz/Widgets/FirstWidget/FirstWidgetLayout.dart';
import 'package:firstquiz/Widgets/SecondWidget/SecondWidgetLayout.dart';
import 'package:firstquiz/Widgets/ThirdWidget/ThirdWigdet.dart';
import 'package:firstquiz/core/provider/ApplicationProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatefulWidget {

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int SelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    ApplicationProvider  appProvider = ApplicationProvider();
    return ChangeNotifierProvider(
      create: (context) => appProvider,
      child: Consumer<ApplicationProvider>(
        builder: (BuildContext context, ApplicationProvider value, Widget? child) =>
         Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: Image.asset("assets/logo.png"),
            title: Text(
              "Moody",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ImageIcon(
                  AssetImage("assets/icons/NotificationIcon.png",),
                  size: 20,
                  color: Colors.black,
                ),
              )
            ],
          ),
          body: Tabs[appProvider.selectedIndex],
           bottomNavigationBar: BottomNavigationBar(
             currentIndex: appProvider.selectedIndex,
             onTap: (value) {
               appProvider.changeSelectedIndex(value);
             },
             items: const [
                 BottomNavigationBarItem(
                   icon: ImageIcon(AssetImage("assets/icons/Icon.png"), size: 24,),
                   label: "Home",
                 ),
                 BottomNavigationBarItem(
                   icon: ImageIcon(AssetImage("assets/icons/grid-01.png"), size: 24,),
                   label: "Home",
                 ),
                 BottomNavigationBarItem(
                   icon: ImageIcon(AssetImage("assets/icons/Icon3.png"), size: 24,),
                   label: "Home",
                 ),

             ],
           ),
        ),
      ),
    );
  }

  List<Widget> Tabs = [
    FirstWidget(),
    SecondWidget(),
    ThirdWidget(),
  ];
}
