import 'package:flutter/material.dart' ;
import 'file:///C:/Users/damia/AndroidStudioProjects/frame_advantage_app/lib/Utility/FrameAdvantageAppBar.dart';

class TournamentCalendarPage extends StatefulWidget {
  TournamentCalendarPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _TournamentCalendarPageState createState() => _TournamentCalendarPageState();
}

class _TournamentCalendarPageState extends State<TournamentCalendarPage> {
  //var _currentBottomMenuIndex =0;
  int _counter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FrameAdvantageAppBar(

        title: Text('Tournament Calendar'),
        context: context,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to the Tournament Calendar Page'),
            Text('$_counter',
              style:Theme.of(context).textTheme.headline4,),
          ],
        ),
      ),
    );
  }
}
