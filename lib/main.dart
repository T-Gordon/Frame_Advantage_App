import 'package:flutter/material.dart';
import 'package:frame_advantage_app/Pages/FrameAdvantageFrameDataPage.dart';
import 'package:frame_advantage_app/Pages/FrameAdvantagePatchNotePage.dart';
import 'Pages/FrameAdvantageHomePage.dart';
import 'Pages/FrameAdvantageTournamentCalendarPage.dart';

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
      initialRoute:  '/',
       routes: {
        '/': (context) =>  FrameAdvantageHomePage(title: 'Home'),
         '/PatchNotesPage': (context) => FrameAdvantagePatchNotePage(title: 'Patch Notes'),
         '/FrameDataPage': (context) => FrameAdvantageFrameDataPage(title: 'Frame Data'),
         '/TournamentCalendarPage': (context) => FrameAdvantageTournamentCalendarPage(title: 'Tournament Calendar'),
         '/NotePadPage': (context) => FrameAdvantageFrameDataPage(title: 'Note Pad'),
       } ,


      //home: FrameAdvantageHomePage(title: 'Home'),
    );
  }
}



