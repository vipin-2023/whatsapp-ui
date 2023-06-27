import 'package:flutter/material.dart';
import 'package:whatsapp/pages/chatPage.dart';
import 'package:whatsapp/pages/chatPage.dart';

class ChatsWidgets extends StatelessWidget {
  const ChatsWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            ChatTab(
              i: 1,
              number: 7025938332,
              massage: "Good morning",
              time: "05:24",
              massageCounter: 2,
            ),
            ChatTab(
              i: 2,
              number: 9025938332,
              massage: "Hello",
              time: "12:34",
              massageCounter: 1,
            ),
            ChatTab(
              i: 3,
              number: 7025938398,
              massage: "Eppo ?",
              time: "01:14",
              massageCounter: 5,
            ),
            ChatTab(
              i: 4,
              number: 805938332,
              massage: "Good morning",
              time: "06:24",
              massageCounter: 7,
            ),
          ],
        ),
      ),
    );
  }
}

class ChatTab extends StatelessWidget {
  final int i;
  final int number;
  final String massage;
  final String time;
  final int massageCounter;

  const ChatTab(
      {Key? key,
      required this.i,
      required this.number,
      required this.massage,
      required this.time,
      required this.massageCounter})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          "chatPage",
          arguments: i,
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 12,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                "assets/profile$i.jpeg",
                height: 60,
                width: 60,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "+91 ${number}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    massage,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(95, 28, 28, 28)),
                  ),
                ],
              ),
            ),
            Spacer(),
            Column(
              children: [
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF0FCE5E),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                    color: Color(0xFF0FCE5E),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "${massageCounter}",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
