import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/%20ChatSample.dart';
import 'package:whatsapp/widgets/ChatBottomBar.dart';

class ChatPage extends StatelessWidget {
  ChatPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 5,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 25,
              ),
            ),
          ),
          leadingWidth: 23,
          title: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/profile1.jpeg",
                    height: 40,
                    width: 40,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Neha Manohar",
                        style: TextStyle(
                          fontSize: 19,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                          color: Colors.white.withOpacity(.75),
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 10, right: 23),
              child: Icon(CupertinoIcons.video_camera_solid, size: 35),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 20),
              child: Icon(Icons.call, size: 23),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 10),
              child: Icon(Icons.more_vert, size: 26),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/chatbg.png"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 80),
            child: Column(
              children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.only(
                    bottom: 20,
                  ),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xFFFFF3C2),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.withOpacity(0.5))
                      ]),
                  child: Row(
                    children: [
                      Text(
                        "Messages and calls are end-to-end \nencripted.No one outside of the chat can \nread or listen. Tap to learn more ",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                ChatSample(),
                ChatSample(),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: ChatBottomBar(),
    );
  }
}
