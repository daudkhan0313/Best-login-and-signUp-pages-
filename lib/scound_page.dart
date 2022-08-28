// import 'package:flutter/material.dart';

// class FavoriteListModel{
// static List<String> itemName = [
// 'name1',
// 'name2',
// 'name3',
// 'name4',
// 'name5',
// 'name6',
// 'name7',
// 'name8',
// ];

// static List<String> itemSubtitle = [
// 'Flowr',
// 'Flowr',
// 'Flowr',
// 'Flowr',
// 'Flowr',
// 'Flowr',
// 'Flowr',
// 'Flowr',
// ];

// static List<String> itemImages=[
// ('images/a (3).png'),
// ('images/a (3).png'),
// ('images/a (3).png'),
// ('images/a (3).png'),
// ('images/a (3).png'),
// ('images/a (3).png'),
// ('images/a (3).png'),
// ('images/a (3).png'),
// ];

// Item getById(int id)=> Item(
//   id,
//   itemName[id % itemName.length],
//   itemSubtitle[id % itemSubtitle.length],
//   itemImages[id % itemImages.length],
// );

// Item getByPosition (int position){
// return getByPosition(position);
// }
// }

// class Item{
//   final int id;
//   final String name;
//   final String subtitle;
//   final String image;

//   const Item(
//     this.id,
//     this.name,
//     this.subtitle,
//     this.image,
//   );

//   @override
//   int get hashCode => id;

//   @override
//   bool operator == (Object other)=> other is Item && other.id==id;
// }