import 'package:flutter/material.dart';

class FrameAdvantageBottomNavBar extends StatefulWidget {
  const FrameAdvantageBottomNavBar({@required this.icons , @required this.onTabPressed, @required this.currentNavIndex}) : assert(icons != null);
  final List<IconData> icons;
  final Function(int) onTabPressed;
  final int currentNavIndex;
  @override
  FrameAdvantageBottomNavBarState createState() => FrameAdvantageBottomNavBarState();
}
class FrameAdvantageBottomNavBarState extends State<FrameAdvantageBottomNavBar> {
 // String _currentPage = "Home";
  int _selectedPageIndex = 0;
  List<String> pageKeys =[
    "home",
    "PatchNotes",
    "FrameData",
    "TournamentCalender",
    "NotePad"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          for(var i = 0; i < widget.icons.length;i++) IconButton(
            icon: Icon(widget.icons[i]),
            color: i == widget.currentNavIndex? Colors.grey: Colors.black,
            onPressed: () => widget.onTabPressed(i),

          ),
        ],
      ),
    );
  }



}
