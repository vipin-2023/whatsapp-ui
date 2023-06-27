import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/%20CallsWidgets.dart';
import 'package:whatsapp/widgets/ChatsWidgets.dart';
import 'package:whatsapp/widgets/StatusWidgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFF075e54),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            bottomOpacity: 0.0,
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "Whatsapp",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(
                  top: 12,
                  right: 15,
                ),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                onSelected: (value) {
                  if (value == 5) {
                    Navigator.pushNamed(context, "settingsPage");
                  }
                },
                elevation: 10,
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text(
                      "New Group",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text(
                      "New broadcast",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Linked devices",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  PopupMenuItem(
                    value: 4,
                    child: Text(
                      "Starred messages",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  PopupMenuItem(
                    value: 5,
                    child: Text(
                      "Settings",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xFF075e54),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  Container(
                    width: 25,
                    child: Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  Container(
                    width: 88,
                    child: Tab(
                      child: Row(
                        children: [
                          Text("CHATS"),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            alignment: Alignment.center,
                            // padding: EdgeInsets.all(10),
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "6",
                              style: TextStyle(
                                  color: Color(0xFF075e54), fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 85,
                    child: Tab(
                      child: Text("STATUS"),
                    ),
                  ),
                  Container(
                    width: 85,
                    child: Tab(
                      child: Text("CALLS"),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  Container(
                    color: Colors.black,
                  ),
                  Container(
                    child: ChatsWidgets(),
                    color: Colors.white,
                  ),
                  Container(
                    child: StatusWidgets(),
                    color: Colors.white,
                  ),
                  Container(
                    child: CallsWidgets(),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {}),
          backgroundColor: Colors.green,
          child: Icon(
            Icons.message,
          ),
        ),
      ),
    );
  }
}
