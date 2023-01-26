import 'package:flutter/material.dart';
import 'package:hw_11/models/item.dart';
import 'package:hw_11/pages/cart.dart';

import 'detail_screen.dart';
import 'item_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static List<Item> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: SizedBox(
          child: Image.asset(
            'lib/assets/jothor.png',
            //fit: BoxFit.fill,
          ),
        ),
        actions: [
          const Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => Cart(
                      items: cartItems,
                    )),
              ),
            ),
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 410,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        ItemCard(
                          item: items[index],
                          press: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                item: items[index],
                                cartItems: cartItems,
                              ),
                            ),
                          ),
                          cartPress: () {
                            cartItems.add(
                              items[index],
                            );
                          },
                        ),
                        const SizedBox(width: 10)
                      ],
                    );
                  }),
            ),
            //
            const SizedBox(height: 20),
            Container(
              color: Colors.white,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Image.asset(
                        'lib/assets/veg.png',
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Image.asset(
                        'lib/assets/fruit.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
