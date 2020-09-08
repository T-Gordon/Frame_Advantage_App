import 'package:flutter/material.dart' ;
import 'package:frame_advantage_app/Utility/FrameAdvantageBottomNavBar.dart';
import 'file:///C:/Users/damia/AndroidStudioProjects/frame_advantage_app/lib/Utility/FrameAdvantageAppBar.dart';


class FrameAdvantageFrameDataPage extends StatefulWidget {
  FrameAdvantageFrameDataPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _FrameAdvantageFrameDataPageState createState() => _FrameAdvantageFrameDataPageState();
}

class _FrameAdvantageFrameDataPageState extends State<FrameAdvantageFrameDataPage> {
  //var _currentBottomMenuIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FrameAdvantageAppBar(

        title: Text('Frame Data'),
        context: context,
      ),
      body: Center(
      ),
      bottomNavigationBar:FrameAdvantageBottomNavBar(),
    );
  }
}
