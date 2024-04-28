import 'package:flutter/material.dart';
import 'package:todoapp/calender.dart';
import 'package:todoapp/dashBoard.dart';
import 'package:todoapp/focus.dart';
import 'package:todoapp/home.dart';
import 'package:todoapp/profile.dart';

class Index_View extends StatefulWidget {
  const Index_View({super.key});

  @override
  State<Index_View> createState() => _Index_ViewState();
}

class _Index_ViewState extends State<Index_View> {
  Widget currentScreen = DashBoard();
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: BottomAppBar(
          height: 60,
          child: Container(
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                      activeTab = 0;
                      currentScreen = home_view();
                    });
                  },
                  child: Icon(
                    Icons.home,
                    color: activeTab == 0 ? Colors.red : Colors.black,
                    
                    
                  ),
                ),
                MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    activeTab = 1;
                    setState(() {
                      currentScreen = calendar_view();
                    });
                  },
                  child: Icon(Icons.favorite,  color: activeTab == 1 ? Colors.red : Colors.black,),
                ),
                MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                       activeTab = 2;
                      currentScreen = focus_view();
                    });
                  },
                  
                  child: Icon(Icons.person, color: activeTab == 2 ? Colors.red : Colors.black),
                ),

                MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                       activeTab = 3;
                      currentScreen = profile_view();
                    });
                  },
                  
                  child: Icon(Icons.person, color: activeTab == 3 ? Colors.red : Colors.black),
                ),
              ],
            ),
          )),
    );
  }
}
