import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Settings",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          child: Column(children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "assets/profile3.jpeg",
                    height: 65,
                    width: 65,
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
                        "Diya",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Hey there, I am using Whatsapp",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black45),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Divider(),
            ProfileFeatures(
              icon: Icons.key,
              title: "Account",
              sub: "Privacy, Security, Change number",
            ),
            ProfileFeatures(
              icon: Icons.message,
              title: "Chats",
              sub: "Theme, Wallpapers, Chat History",
            ),
            ProfileFeatures(
              icon: Icons.notifications,
              title: "Notifications",
              sub: "Message, Group & Call tunes",
            ),
            ProfileFeatures(
              icon: Icons.circle_outlined,
              title: "Storage and Data",
              sub: "Network usage, auto-download",
            ),
            ProfileFeatures(
              icon: Icons.help_outline_outlined,
              title: "Help",
              sub: "Help Centre, Contact us, Privacy policy",
            ),
            ProfileFeatures(
              icon: Icons.people_alt,
              title: "Invite a Friend",
              sub: "Privacy, Security, Change number",
            ),
            Column(children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "from",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              Text(
                "Meta",
                style: TextStyle(color: Colors.green, fontSize: 20),
              )
            ])
          ]),
        ),
      ),
    );
  }
}

class ProfileFeatures extends StatelessWidget {
  final String title;
  final IconData icon;
  final String sub;

  ProfileFeatures(
      {Key? key, required this.title, required this.icon, required this.sub})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: EdgeInsets.only(
          top: 6,
        ),
        child: Icon(icon),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
      subtitle: Text(
        sub,
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}
