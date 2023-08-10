import 'package:designing/phone.dart';
import 'package:designing/providerr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Displayselectedcards extends StatelessWidget {
  const Displayselectedcards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemsProvider = Provider.of<SelectedCardProvider>(context);
    final favoriteItems = itemsProvider.favoriteItems;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Selected Cards"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: favoriteItems
            .map((item) => CardItem(
                  itemIndex: itemsProvider.items.indexOf(item),
                ))
            .toList(),
      ),
      // body: SizedBox(
      //   child: Card(
      //     child: Center(
      //       child: Consumer<SelectedCardProvider>(
      //         builder: (context, selectedCardProvider, _) {
      //           List<String> selectedCards = selectedCardProvider.items;
      //           return ListView.builder(
      //             itemCount: selectedCards.length,
      //             itemBuilder: (context, index) {
      //               return ListTile(
      //                 title: Text(selectedCards[index]),
      //               );
      //             },
      //           );
      //         },
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
