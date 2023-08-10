import 'package:flutter/material.dart';

class Headphone extends StatefulWidget {
  const Headphone({Key? key}) : super(key: key);

  @override
  State<Headphone> createState() => _Headphone();
}

class _Headphone extends State<Headphone> {
  List<String> cards = [
    'Card 1',
    'Card 2',
    'Card 3',
    // Add more cards as needed
  ];
  int currentIndex = 0;
  void onCardSwiped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("HeadPhone"),
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          elevation: 0.00,
          backgroundColor: Colors.orange[400],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomCard(
                  image: "assets/images/ear1.webp",
                  titleIcon: "Apple EarPods with\n Lightning Connector"),
              CustomCard(
                  image: "assets/images/ear2.jpg",
                  titleIcon:
                      "Apple AirPods (3rd \nGeneration) with Lightning\n Charging Case ​​​​​​​"),
              CustomCard(
                  image: "assets/images/ear3.webp",
                  titleIcon:
                      "Apple Beats Flex Wirel\ness Earphones W1 Head\nphone Chip, Magnetic\n Earbuds, Class 1\n Bluetooth, 12 Hours \nof Listening Time,\n Built-in Microphone \n- Blue"),
              CustomCard(
                  image: "assets/images/ear4.jpg",
                  titleIcon:
                      "Beats Fit Pro – \nTrue Wireless Noise\n Cancelling Earbuds –\n Active Noise Cancelling - \nSweat Resistant Earph\nones, Compatible with\n Apple & Android, Class 1\n Bluetooth®, Built\n-in Microphone – Black"),
            ],
          ),
        ));
  }
}

class CustomCard extends StatefulWidget {
  final String image;
  final String titleIcon;
  
  CustomCard({required this.image, required this.titleIcon});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Card(
                      //card

                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            SizedBox(
                                height: 250,
                                width: 150,
                                child: Image.asset(widget.image)),
                            SizedBox(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: Text(
                                      widget.titleIcon,
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
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
