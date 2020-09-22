import 'package:flutter/material.dart' ;
import 'file:///C:/Users/damia/AndroidStudioProjects/frame_advantage_app/lib/Utility/FrameAdvantageAppBar.dart';



class FrameDataPage extends StatefulWidget {
  FrameDataPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _FrameDataPageState createState() => _FrameDataPageState();
}

class _FrameDataPageState extends State<FrameDataPage> {
  //var _currentBottomMenuIndex =0;
  int _counter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FrameAdvantageAppBar(

        title: Text('Frame Data'),
        context: context,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to the Frame Data Page Page'),
            Text('$_counter',
              style:Theme.of(context).textTheme.headline4,),
          ],
        ),
      ),
    );
  }
}
