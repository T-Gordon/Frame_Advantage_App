import 'package:flutter/material.dart';
import 'package:frame_advantage_app/Pages/FrameAdvantageFrameDataPage.dart';
import 'package:frame_advantage_app/Pages/FrameAdvantageHomePage.dart';
import 'package:frame_advantage_app/Pages/FrameAdvantageNotePadPage.dart';
import 'package:frame_advantage_app/Pages/FrameAdvantagePatchNotePage.dart';
import 'package:frame_advantage_app/Pages/FrameAdvantageTournamentCalendarPage.dart';
class PageNavigator extends StatelessWidget{
  PageNavigator({Key key ,this.navigatorKey, this.page});
  final GlobalKey<NavigatorState> navigatorKey;
  final String page;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget child;
    switch(page){
      case 'Home':
        child = FrameAdvantageHomePage(title: "home",);
        break;
      case 'PatchNotes':
        child = FrameAdvantagePatchNotePage(title: "Patch Notes",);
        break;
      case 'FrameData':
        child = FrameAdvantageFrameDataPage(title: "Frame Data",);
        break;
      case 'TournamentCalendar':
        child = FrameAdvantageTournamentCalendarPage(title: "Tournament Calendar",);
        break;
      case 'NotePad':
        child = FrameAdvantageNotePadPage(title: "Note Pad",);
        break;
      default:
        child = FrameAdvantageHomePage(title: "home",);
        break;
    }
    return Navigator(
      key: navigatorKey,
      onGenerateRoute:(routeSettings){
        return MaterialPageRoute(
                builder: (context)=> child
        );
      },
    );

  }
}