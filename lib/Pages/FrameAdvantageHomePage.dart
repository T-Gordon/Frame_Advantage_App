import 'package:flutter/material.dart';
import 'file:///C:/Users/damia/AndroidStudioProjects/frame_advantage_app/lib/Utility/FrameAdvantageAppBar.dart';
import 'package:frame_advantage_app/Utility/FrameAdvantageBottomNavBar.dart';


class FrameAdvantageHomePage extends StatefulWidget {
  FrameAdvantageHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _FrameAdvantageHomePageState createState() => _FrameAdvantageHomePageState();
}

class _FrameAdvantageHomePageState extends State<FrameAdvantageHomePage> {
// var _currentBottomMenuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FrameAdvantageAppBar(
        title: Text('Home'),
        context: context,
      ),

      bottomNavigationBar: FrameAdvantageBottomNavBar(),
    );
  }
}
