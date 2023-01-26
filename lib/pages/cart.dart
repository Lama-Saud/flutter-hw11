import 'package:flutter/material.dart';

import '../models/item.dart';

class Cart extends StatelessWidget {
  List<Item> items;
  Cart({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: Navigator.of(context).pop,
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: SizedBox(
              height: 80,
              width: 80,
              child: Image.asset(
                items[index].imagePath,
                // width: 100,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              items[index].title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              items[index].price,
              style: const TextStyle(color: Colors.black38),
            ),
          );
        },
      ),
    );
  }
}
