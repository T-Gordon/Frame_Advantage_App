import 'package:flutter/material.dart';
import 'file:///C:/Users/damia/AndroidStudioProjects/frame_advantage_app/lib/Utility/FrameAdvantageAppBar.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int _counter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FrameAdvantageAppBar(
        title: Text('Home'),
        context: context,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to the Home Page'),
            Text('$_counter',
            style:Theme.of(context).textTheme.headline4,),
          ],
        ),
      ),
    );
  }
}
