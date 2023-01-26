class Item {
  String title;
  String price;
  String imagePath;

  Item({
    required this.title,
    required this.price,
    required this.imagePath,
  });
}

List<Item> items = [
  Item(
    title: 'Herbal Lizard Repellent',
    price: '27 SAR',
    imagePath: 'lib/assets/item1.png',
  ),
  Item(
    title: 'Herbal Mosquito Room Spray',
    price: '27 SAR',
    imagePath: 'lib/assets/item2.png',
  ),
  Item(
    title: 'Herbal Ant Repellent',
    price: '27 SAR',
    imagePath: 'lib/assets/item3.png',
  ),
];
