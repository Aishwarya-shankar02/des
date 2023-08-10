import 'package:flutter/material.dart';

class Laptop extends StatefulWidget {
  const Laptop({Key? key}) : super(key: key);

  @override
  State<Laptop> createState() => _Laptop();
}

class _Laptop extends State<Laptop> {
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
          title: const Text("Laptop"),
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
                  image:
                      "assets/images/apple-macbook-air-m1-13-3-inch-lightwings-original-imag3gh5xftgbpg3.webp",
                  titleIcon:
                      "APPLE 2020 Macbook \n  Air M1 - (8 GB/256 GB\n  SSD/Mac OS Big Sur)\n  MGN63HN/A  (13.3 inch, \n Space Grey, 1.29 kg)"),
              CustomCard(
                  image: "assets/images/-original-imagfdfpnjjpdhq2.webp",
                  titleIcon:
                      "APPLE 2022 MacBook \nAIR M2 - (8 GB/256GB SSD\n/Mac OS Monterey)\n MLY13HN/A  (13.6 Inch, \nStarlight, 1.24 kg)"),
              CustomCard(
                  image: "assets/images/-original-imagfdeqter4sj2j.webp",
                  titleIcon:
                      "APPLE 2022 MacBook\n AIR M2 - (8 GB/256 GB\n SSD/Mac OS Monterey) \nMLY33HN/A  (13.6 Inch, \nMidnight, 1.24 Kg)"),
              CustomCard(
                  image: "assets/images/apple-original-imafxfyqydgvrkzv.webp",
                  titleIcon:
                      "APPLE 2020 Macbook\n  Air M1 - (8 GB/256 GB\n  SSD/Mac OS Big Sur)\n  MGN93HN/A  (13.3 inch,\n  Silver, 1.29 kg)"),
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
