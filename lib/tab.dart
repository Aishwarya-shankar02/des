import 'package:flutter/material.dart';

class Tablet extends StatefulWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  State<Tablet> createState() => _Tablet();
}

class _Tablet extends State<Tablet> {
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
          title: const Text(" Tablet"),
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
                  image: "assets/images/61NGnpjoRDL._SX679_.jpg",
                  titleIcon:
                      "Apple 2021 10.2-inch \n (25.91 cm) iPad with \n A13 Bionic chip (Wi-Fi, \n 64GB) - Space Grey \n (9th Generation)"),
              CustomCard(
                  image: "assets/images/815KnP2wjDS._SX679_.jpg",
                  titleIcon:
                      "Apple 2021 iPad \n Pro M1 chip (12.9-inch/ \n 32.77 cm, Wi-Fi, 128GB) -\n Silver (5th Generation)"),
              CustomCard(
                  image: "assets/images/61k05QwLuML._SX679_.jpg",
                  titleIcon:
                      "Apple 2022 iPad Air \nM1 Chip (10.9-inch/27.69 \ncm, Wi-Fi, 64GB) - Purple\n (5th Generation)"),
              CustomCard(
                  image: "assets/images/71o6PxcKkJL._SX679_.jpg",
                  titleIcon:
                      "Apple 2021 iPad Mini \nwith A15 Bionic chip\n (Wi-Fi, 64GB) - Starlight\n (6th Generation)"),
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
