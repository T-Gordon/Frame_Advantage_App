import 'package:flutter/material.dart' ;
import 'package:frame_advantage_app/Utility/FrameAdvantageBottomNavBar.dart';
import 'file:///C:/Users/damia/AndroidStudioProjects/frame_advantage_app/lib/Utility/FrameAdvantageAppBar.dart';



class FrameAdvantagePatchNotePage extends StatefulWidget {
  FrameAdvantagePatchNotePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _FrameAdvantagePatchNotePageState createState() => _FrameAdvantagePatchNotePageState();
}

class _FrameAdvantagePatchNotePageState extends State<FrameAdvantagePatchNotePage> {
  //var _currentBottomMenuIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FrameAdvantageAppBar(

        title: Text('Patch Notes'),
        context: context,
      ),
      body: Center(
      ),
      bottomNavigationBar: FrameAdvantageBottomNavBar(),
    );
  }
}
