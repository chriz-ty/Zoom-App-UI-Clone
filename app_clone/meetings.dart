import 'package:flutter/material.dart';
void main(){
  runApp(home_screen());
}

class home_screen extends StatefulWidget{
  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  int _page=0;
  onPageChanged(int page){
    setState(() {
      _page= page;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          title:Padding(
            padding: EdgeInsets.fromLTRB(140, 0, 0, 0),
            child: Text("Meetings",),
          ),
          backgroundColor: Colors.grey[850],
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.info_outline)),
          ],
          elevation: 0.0,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/meetings_images/new_meeting.png",
                        ),
                        iconSize: 60,
                      ),
                      SizedBox(height: 20,),
                      Text('New Meeting',style: TextStyle(
                          fontSize: 15,
                          color: Colors.white54
                      ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/meetings_images/join.png",
                        ),
                        iconSize: 80,
                      ),
                      Text('Join',style: TextStyle(
                          fontSize: 15,
                          color: Colors.white54
                      ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/meetings_images/schedule.png",
                        ),
                        iconSize: 85,
                      ),
                      Text('Schedule',style: TextStyle(
                          fontSize: 15,
                          color: Colors.white54
                      ),
                      ),
                    ],
                  ),

                ),

                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/images/meetings_images/screen-share.png",
                      ),
                      iconSize: 85,
                    ),

                    Text('Share Screen',style: TextStyle(
                        fontSize: 15,
                        color: Colors.white54
                    ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(height: 10,color: Colors.grey[700],),
            TextButton(
                onPressed: (){},
                child: Text(
                  "Add a calender",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20
                  ),
                ),
            ),
            Divider(height: 10,color: Colors.grey[800],),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[900],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: onPageChanged,
          currentIndex: _page,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14,
          items:const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/footer/video.png"),
              ),
              label: "Meetings",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/footer/icons-communication.png"),
              ),
              label: "Team Chat",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/footer/icons-contacts.png"),
              ),
              label: "Contacts",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/footer/icons-more.png"),
              ),
              label: "More",
            ),
          ],
        ),

      ),
    );
  }
}