import 'package:flutter/material.dart';
import 'package:frame_advantage_app/Utility/PageNavigatorRoutes.dart';
import 'package:frame_advantage_app/Utility/PageNavigator.dart';
class FrameAdvantageBottomNavBar extends StatefulWidget {
  @override
  FrameAdvantageBottomNavBarState createState() => FrameAdvantageBottomNavBarState();
}
class FrameAdvantageBottomNavBarState extends State<FrameAdvantageBottomNavBar> {
  String _currentPage = "Home";
  int _selectedPageIndex = 0;
  List<String> pageKeys =[
    "home",
    "PatchNotes",
    "FrameData",
    "TournamentCalender",
    "NotePad"
  ];
  Map <String,GlobalKey<NavigatorState>> _navigatorKeys = {
    "home": GlobalKey<NavigatorState>(),
    "PatchNotes": GlobalKey<NavigatorState>(),
    "FrameData": GlobalKey<NavigatorState>(),
    "TournamentCalender": GlobalKey<NavigatorState>(),
    "NotePad": GlobalKey<NavigatorState>(),
  };
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[buildNavBarItem(Icons.home, 0),
        buildNavBarItem(Icons.note_add, 1),
        buildNavBarItem(Icons.perm_data_setting, 2),
        buildNavBarItem(Icons.calendar_today, 3),
        buildNavBarItem(Icons.event_note, 4),],
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        //TabNavigatorRoutes();
        setState(() {
          _selectedPageIndex = index;
        });
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 5,
        decoration: _selectedPageIndex == index
            ? BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 4 , color: Colors.black)
          ),
          gradient: LinearGradient(colors: [
            Colors.grey.withOpacity(0.3),
            Colors.grey.withOpacity(0.015)
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
          /*color: _currentBottomMenuIndex == index ? Colors.grey : Colors.white*/
        )
            : BoxDecoration(),
        child: Icon(icon,
            color:
            _selectedPageIndex == index ? Colors.black : Colors.grey),
      ),
    );
  }
  void _selectPage(String page, int index) {
    if (page == _currentPage) {
      _navigatorKeys[page].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentPage = pageKeys[index];
      });
    }
  }
}
/*
*
*  */