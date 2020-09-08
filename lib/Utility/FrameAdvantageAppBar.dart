import 'package:flutter/material.dart';
import '../Pages/FrameAdvantageSettingsPage.dart';
class FrameAdvantageAppBar extends AppBar{
  FrameAdvantageAppBar({Key key, Widget title  ,BuildContext context,})
      : super(key: key , title: title , centerTitle: true , actions: <Widget>[new IconButton(icon: new Icon(Icons.settings)
    , onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder:(context)=>FrameAdvantageSettingsPage(title: 'Settings'))),)]);


}