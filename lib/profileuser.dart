import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profileuser extends StatefulWidget {
  const Profileuser({Key? key}) : super(key: key);

  @override
  State<Profileuser> createState() => _ProfileuserState();
}

class _ProfileuserState extends State<Profileuser> {
  String displayName = '';

  @override
  void initState() {
    super.initState();
    _loadDisplayName();
  }

  void _loadDisplayName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String name = prefs.getString('name') ?? '';

    setState(() {
      displayName = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.deepOrangeAccent, Colors.orangeAccent])),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.account_circle,
                      size: 100,
                      color: Colors.white,
                    ),
                    Text(
                      "$displayName",
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // Padding(
                          //   padding: EdgeInsets.only(right: 30),
                          //   child: Text(
                          //     "Login",
                          //     style: TextStyle(color: Colors.white, fontSize: 30),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
                child: ProfileCard(icon: Icons.account_box, text: "Account")),
            ProfileCard(icon: Icons.account_box, text: "Account"),
            ProfileCard(icon: Icons.password, text: "Password"),
            ProfileCard(icon: Icons.account_box, text: "Account"),
            ProfileCard(icon: Icons.account_box, text: "Account")
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatefulWidget {
  final IconData icon;
  final String text;
  ProfileCard({required this.icon, required this.text});

  @override
  State<ProfileCard> createState() => _ProfileCard();
}

class _ProfileCard extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Card(
                      //card

                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 250,
                              width: 150,
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(widget.icon))),
                          SizedBox(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Text(
                                    widget.text,
                                    style: const TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
