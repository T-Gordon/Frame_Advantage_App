import 'package:flutter/material.dart';
import 'package:frame_advantage_app/Pages/CurrentPage.dart';


void main() {
  runApp(FrameAdvantageApp());
}

class FrameAdvantageApp extends StatelessWidget {
  // This widget is the root.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frame Advantage App',
      theme: ThemeData(
        primarySwatch: Colors.grey,// Main theme Color
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     /* initialRoute:  '/',
       routes: {
        '/': (context) =>  HomePage(title: 'Home'),
         '/PatchNotesPage': (context) => PatchNotePage(title: 'Patch Notes'),
         '/FrameDataPage': (context) => FrameDataPage(title: 'Frame Data'),
         '/TournamentCalendarPage': (context) => TournamentCalendarPage(title: 'Tournament Calendar'),
         '/NotePadPage': (context) => FrameDataPage(title: 'Note Pad'),
       } ,*/
      home: CurrentPage(),
    );
  }
}



