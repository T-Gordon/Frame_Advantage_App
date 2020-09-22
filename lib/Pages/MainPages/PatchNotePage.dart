import 'package:flutter/material.dart' ;
import 'file:///C:/Users/damia/AndroidStudioProjects/frame_advantage_app/lib/Utility/FrameAdvantageAppBar.dart';



class PatchNotePage extends StatefulWidget {
  PatchNotePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _PatchNotePageState createState() => _PatchNotePageState();
}

class _PatchNotePageState extends State<PatchNotePage> {
  //var _currentBottomMenuIndex =0;
  int _counter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FrameAdvantageAppBar(

        title: Text('Patch Notes'),
        context: context,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to the Patch Note Page'),
            Text('$_counter',
              style:Theme.of(context).textTheme.headline4,),
          ],
        ),
      ),
    );
  }
}
