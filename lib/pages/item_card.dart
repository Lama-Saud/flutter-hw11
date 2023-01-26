import 'package:flutter/material.dart';
import 'package:hw_11/models/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  final Function() cartPress;
  final Function() press;

  const ItemCard({
    super.key,
    required this.item,
    required this.press,
    required this.cartPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,
          border: Border.all(color: const Color.fromARGB(255, 206, 205, 205)),
          boxShadow: const [
            BoxShadow(),
          ],
        ),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   height: 200,
            //   width: 200,
            //   decoration: const BoxDecoration(
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(20),
            //       ),
            //       color: Colors.white),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisAlignment: MainAxisAlignment.start,
            // children: [
            Image.asset(
              item.imagePath,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //const SizedBox(height: 16),
                  Text(item.title, style: const TextStyle(fontSize: 20, color: Color(0xFFa4bea0))),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(item.price, style: const TextStyle()),
                      InkWell(
                        onTap: cartPress,
                        child: const Icon(
                          Icons.shopping_bag_outlined,
                          color: Color(0xFFa4bea0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //   ],
            // ),
            // ),
          ],
        ),
      ),
    );
  }
}
