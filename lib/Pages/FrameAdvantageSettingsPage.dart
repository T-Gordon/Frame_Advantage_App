import 'package:flutter/material.dart' ;
class FrameAdvantageSettingsPage extends StatefulWidget {
  FrameAdvantageSettingsPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _FrameAdvantageSettingsPageState createState() => _FrameAdvantageSettingsPageState();
}

class _FrameAdvantageSettingsPageState extends State<FrameAdvantageSettingsPage> {
  final  List<String> settingsInfo =[
    "General Settings",
    "Network Settings",
    "Language Settings",
    "Help and Support",
    "About",
  ];
  final List<IconData> settingsIcons =[
     Icons.gamepad,
    Icons.network_cell,
    Icons.language,
    Icons.help,
    Icons.note,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: settingsInfo.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                onTap: (){},
                title: Text(settingsInfo[index]),
                leading: Icon(settingsIcons[index])
              ),
            );
          },
        ),
      ),
    );
  }
}
