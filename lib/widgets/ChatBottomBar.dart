import 'package:flutter/material.dart';

class ChatBottomBar extends StatelessWidget {
  const ChatBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/chatbg.png"), fit: BoxFit.fitWidth),
      ),
      height: 62,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.black38,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 210,
                  child: TextFormField(
                    style: TextStyle(fontSize: 19),
                    decoration: InputDecoration(
                        hintText: "Message", border: InputBorder.none),
                  ),
                ),
                RotationTransition(
                  turns: AlwaysStoppedAnimation(-45 / 360),
                  child: Icon(
                    Icons.attach_file_rounded,
                    color: Colors.black38,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.camera_alt,
                  color: Colors.black45,
                  size: 27,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 8, 139, 26),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              Icons.mic,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
