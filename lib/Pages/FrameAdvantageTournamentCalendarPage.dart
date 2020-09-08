import 'package:flutter/material.dart' ;
import 'file:///C:/Users/damia/AndroidStudioProjects/frame_advantage_app/lib/Utility/FrameAdvantageAppBar.dart';
import 'package:frame_advantage_app/Utility/FrameAdvantageBottomNavBar.dart';


class FrameAdvantageTournamentCalendarPage extends StatefulWidget {
  FrameAdvantageTournamentCalendarPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _FrameAdvantageTournamentCalendarPageState createState() => _FrameAdvantageTournamentCalendarPageState();
}

class _FrameAdvantageTournamentCalendarPageState extends State<FrameAdvantageTournamentCalendarPage> {
  //var _currentBottomMenuIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FrameAdvantageAppBar(

        title: Text('Tournament Calendar'),
        context: context,
      ),
      body: Center(
      ),
      bottomNavigationBar:FrameAdvantageBottomNavBar(),
    );
  }
}
