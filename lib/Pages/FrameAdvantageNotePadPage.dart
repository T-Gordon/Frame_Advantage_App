import 'package:flutter/material.dart' ;
import 'file:///C:/Users/damia/AndroidStudioProjects/frame_advantage_app/lib/Utility/FrameAdvantageAppBar.dart';
import 'package:frame_advantage_app/Utility/FrameAdvantageBottomNavBar.dart';


class FrameAdvantageNotePadPage extends StatefulWidget {
  FrameAdvantageNotePadPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _FrameAdvantageNotePadPageState createState() => _FrameAdvantageNotePadPageState();
}

class _FrameAdvantageNotePadPageState extends State<FrameAdvantageNotePadPage> {
 // var _currentBottomMenuIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FrameAdvantageAppBar(
        title: Text('Note Pad'),
        context: context,
      ),
      body: Center(
      ),
      bottomNavigationBar: FrameAdvantageBottomNavBar(),
    );
  }
}
