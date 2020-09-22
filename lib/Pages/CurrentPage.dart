import 'package:flutter/material.dart';
import 'file:///C:/Users/damia/AndroidStudioProjects/frame_advantage_app/lib/Pages/MainPages/FrameDataPage.dart';
import 'package:frame_advantage_app/Pages/MainPages/NotePadPage.dart';
import 'file:///C:/Users/damia/AndroidStudioProjects/frame_advantage_app/lib/Pages/MainPages/PatchNotePage.dart';
import 'file:///C:/Users/damia/AndroidStudioProjects/frame_advantage_app/lib/Pages/MainPages/TournamentCalendarPage.dart';
import 'package:frame_advantage_app/Utility/FrameAdvantageBottomNavBar.dart';

import 'MainPages/HomePage.dart';
class CurrentPage extends StatefulWidget {
  @override
  _CurrentPageState createState() => _CurrentPageState();
}

class _CurrentPageState extends State<CurrentPage> {
  var navIndex = 0;

  final pages =List<Widget>.unmodifiable([
    HomePage(),
    PatchNotePage(),
    FrameDataPage(),
    TournamentCalendarPage(),
    NotePadPage(),
  ]);
  final iconList = List<IconData>.unmodifiable([
    Icons.home,
    Icons.note_add,
    Icons.perm_data_setting,
    Icons.calendar_today,
    Icons.event_note,
  ]);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[navIndex],
      bottomNavigationBar: FrameAdvantageBottomNavBar(
        icons: iconList,
        onTabPressed: (i) => setState(() => navIndex = i),
      currentNavIndex: navIndex,
      ),
    );
  }
}
