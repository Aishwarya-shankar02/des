import 'package:designing/providerr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Phone extends StatelessWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phone"),
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
            CardItem(itemIndex: 0),
            CardItem(itemIndex: 1),
            CardItem(itemIndex: 2),
            CardItem(itemIndex: 3),
          ],
        ),
      ),
    );
  }
}

// import 'package:designing/displayselectedcards.dart';
// import 'package:designing/providerr.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class Phone extends StatefulWidget {
//   const Phone({Key? key}) : super(key: key);

//   @override
//   _PhoneState createState() => _PhoneState();
// }

// class _PhoneState extends State<Phone> {
//   List<String> cards = [
//     'Card 1',
//     'Card 2',
//     'Card 3',
//     // Add more cards as needed
//   ];
//   int currentIndex = 0;
//   void onCardSwiped(int index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Phone"),
//           titleSpacing: 00.0,
//           centerTitle: true,
//           toolbarHeight: 60.2,
//           toolbarOpacity: 0.8,
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//                 bottomRight: Radius.circular(25),
//                 bottomLeft: Radius.circular(25)),
//           ),
//           elevation: 0.00,
//           backgroundColor: Colors.orange[400],
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               CustomCard(
//                   image: "assets/images/61BGE6iu4AL._SX522_.jpg",
//                   titleIcon: "Apple iPhone 11 (64GB) \n- White ] \n  2019"),
//               CustomCard(
//                   image:
//                       "assets/images/31DaY6l18YL._SY445_SX342_QL70_FMwebp_.webp",
//                   titleIcon:
//                       "Apple iPhone 14 Pro Max \n  (128 GB)  - Gold  2022"),
//               CustomCard(
//                   image: "assets/images/61BGE6iu4AL._SX522_.jpg",
//                   titleIcon: "Apple iPhone 14  Plus \n (128 GB) - Blue"),
//               CustomCard(
//                   image: "assets/images/61BGE6iu4AL._SX522_.jpg",
//                   titleIcon: "Apple iPhone 14 \n Plus (128 GB) - Blue"),
//             ],
//           ),
//         ));
//   }
// }

class CardItem extends StatelessWidget {
  final int itemIndex;

  CardItem({required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    final itemsProvider = Provider.of<SelectedCardProvider>(context);
    final item = itemsProvider.items[itemIndex];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          title: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Card(
                  //card

                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 200,
                          width: 115,
                          child: Image.asset(item.image)),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Text(
                          item.productName,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: IconButton(
                                  onPressed: () {
                                    itemsProvider.toggleFavorite(itemIndex);
                                  },
                                  icon: Icon(
                                    item.isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: item.isFavorite ? Colors.red : null,
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
