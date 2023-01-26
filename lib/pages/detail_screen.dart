import 'package:flutter/material.dart';
import 'package:hw_11/models/item.dart';

class DetailScreen extends StatelessWidget {
  final Item item;
  List<Item> cartItems;
  DetailScreen({super.key, required this.item, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              item.imagePath,
              height: 350,
              width: 350,
              // fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              item.title,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFFa4bea0)),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              item.price,
              style: const TextStyle(fontSize: 20, color: Colors.black38),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: const Color(0xFFa4bea0), width: 1),
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    color: Color(0xFFa4bea0),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: const Color(0xFFa4bea0), width: 1),
                  ),
                  child: const Icon(
                    Icons.share,
                    color: Color(0xFFa4bea0),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () => cartItems.add(item),
              child: Container(
                decoration:
                    const BoxDecoration(color: Color(0xFFa4bea0), borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.shopping_cart),
                      Text("Add to Cart"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(30),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           const Text(
      //             'Aristocratic Hand Bag',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //           Text(
      //             item.title,
      //             style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white),
      //           ),
      //           const SizedBox(height: 20),
      //           Row(
      //             children: [
      //               RichText(
      //                 text: TextSpan(
      //                   children: [
      //                     const TextSpan(text: 'Price\n'),
      //                     TextSpan(
      //                         text: '\$${item.price}',
      //                         style: Theme.of(context)
      //                             .textTheme
      //                             .headline4!
      //                             .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
      //                   ],
      //                 ),
      //               ),
      //               const SizedBox(width: 21),
      //               Expanded(
      //                   child: Image.asset(
      //                 item.imagePath,
      //                 fit: BoxFit.fill,
      //               )),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //     Container(
      //       // margin: EdgeInsets.only(top: size.height * 0.32),
      //       padding: EdgeInsets.only(
      //         top: size.height * 15,
      //         left: 20,
      //         right: 20,
      //       ),
      //       height: 200,
      //       decoration: const BoxDecoration(
      //         color: Colors.amber,
      //         borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(25),
      //           topRight: Radius.circular(25),
      //         ),
      //       ),
      //       child: Column(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.symmetric(vertical: 20),
      //             child: Text(
      //               item.title,
      //               style: const TextStyle(
      //                 height: 1.5,
      //               ),
      //             ),
      //           ),
      //           Row(
      //             children: [
      //               Container(
      //                 margin: const EdgeInsets.only(right: 20),
      //                 height: 58.0,
      //                 width: 58.0,
      //                 decoration: BoxDecoration(
      //                   border: Border.all(color: Colors.grey),
      //                   borderRadius: BorderRadius.circular(18),
      //                 ),
      //                 child: IconButton(
      //                   onPressed: () {},
      //                   icon: const Icon(Icons.shopping_cart),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
