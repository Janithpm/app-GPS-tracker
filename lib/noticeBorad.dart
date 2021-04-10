import 'package:flutter/material.dart';
import 'lostDogPage.dart';
import 'abuseDogPage.dart';

class NoticeBorad extends StatefulWidget {
  @override
  _NoticeBoradState createState() => _NoticeBoradState();
}

class _NoticeBoradState extends State<NoticeBorad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: DefaultTabController(
          length: 3,
          child: Stack(
            children: [
              Scaffold(
                backgroundColor: Colors.grey[900],
                bottomNavigationBar: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TabBar(
                    labelPadding: EdgeInsets.only(top: 10),
                    tabs: [
                      Tab(
                        child: Icon(Icons.add_call),
                      ),
                      Tab(
                        child: Icon(Icons.add_call),
                      ),
                      Tab(
                        child: Icon(Icons.add_call),
                      ),
                    ],
                    labelColor: Colors.red,
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(color: Colors.white),
                      insets: EdgeInsets.only(bottom: 60),
                    ),
                    unselectedLabelColor: Colors.grey,
                  ),
                ),
                body: TabBarView(
                  children: [
                    LostDogPage(),
                    AbuseDogPage(),
                    Center(
                      child: Text(
                        "Tab 03",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
