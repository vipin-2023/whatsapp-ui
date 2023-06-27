import 'package:custom_clippers/MessageClippers/upper_nip_message_clipper.dart';
import 'package:custom_clippers/MessageClippers/upper_nip_message_clipper_two.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ReceiveMessage(),
        SendMessage(),
        ReceiveMessage(),
        ReceiveMessage(),
        SendMessage(),
        ReceiveMessage(),
        SendMessage(),
        ReceiveMessage(),
        SendMessage(),
      ],
    );
  }
}

class SendMessage extends StatelessWidget {
  const SendMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      padding: EdgeInsets.only(left: 100),
      child: Padding(
        padding: EdgeInsets.only(right: 10),
        child: ClipPath(
          clipper: LowerNipMessageClipper(MessageType.SEND),
          child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              color: Color(0xFFE4FDCA),
            ),
            child: Text(
              "hey, How are you mann i bought that island ?",
              style: TextStyle(fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}

class ReceiveMessage extends StatelessWidget {
  const ReceiveMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Padding(
        padding: EdgeInsets.only(right: 100),
        child: ClipPath(
          clipper: UpperNipMessageClipperTwo(MessageType.RECEIVE),
          child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 28),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text(
              "hey, I am ok mann how you  going , Are you buy a island ?",
              style: TextStyle(fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}
