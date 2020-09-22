import 'package:flutter/material.dart' ;
import 'file:///C:/Users/damia/AndroidStudioProjects/frame_advantage_app/lib/Utility/FrameAdvantageAppBar.dart';

class NotePadPage extends StatefulWidget {
  NotePadPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _NotePadPageState createState() => _NotePadPageState();
}

class _NotePadPageState extends State<NotePadPage> {
 // var _currentBottomMenuIndex =0;
  int _counter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FrameAdvantageAppBar(
        title: Text('Note Pad'),
        context: context,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to the Note Pad Page'),
            Text('$_counter',
              style:Theme.of(context).textTheme.headline4,),
          ],
        ),
      ),
    );
  }
}
