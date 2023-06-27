import 'package:flutter/material.dart';

class CallsWidgets extends StatelessWidget {
  const CallsWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        child: Column(
          children: [
            for (int i = 5; i > 0; i--)
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/profile${i}.jpeg",
                        height: 60,
                        width: 60,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Vyshak",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.call_made,
                                color: Color(0xFF075E55),
                                size: 19,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "(1) Today, 12.29 pm",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(
                        Icons.call_sharp,
                        color: Color(0xFF075E55),
                      ),
                    )
                  ],
                ),
              ),
//second section

            for (int i = 11; i > 5; i--)
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/profile${i}.jpeg",
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gokul",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.call_received,
                                color: Color.fromARGB(255, 174, 19, 10),
                                size: 19,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "(3) Today, 12.29 pm",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(
                        Icons.videocam,
                        color: Color(0xFF075E55),
                        size: 28,
                      ),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
