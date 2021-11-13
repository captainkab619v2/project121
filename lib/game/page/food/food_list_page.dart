import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lastproject/game/page/models/food_details.dart';
import 'package:lastproject/game/page/models/food_item.dart';



class FoodListPage extends StatefulWidget {
  const FoodListPage({Key? key}) : super(key: key);

  @override
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  var items = [
    FoodItem(
      id: 1,
      name: 'ชานม',
      price: 19,
      image: 'chanom.jpg',
    ),
    FoodItem(
      id: 2,
      name: 'ชาเขียวนม',
      price: 19,
      image: 'greenmilktea.jpg',
    ),
    FoodItem(
      id: 3,
      name: 'ชาเย็น',
      price: 19,
      image: 'thaitea.jpg',
    ),
    FoodItem(
      id: 4,
      name: 'กาแฟเย็น',
      price: 19,
      image: 'latte.jpg',
    ),
    FoodItem(
      id: 5,
      name: 'ชาเขียวมะลิ',
      price: 19,
      image: 'greentea.jpg',
    ),
    FoodItem(
      id: 6,
      name: 'ชาแดง',
      price: 19,
      image: 'redtea.jpg',
    ),
    FoodItem(
      id: 7,
      name: 'ชาเขียวโยเกิร์ต',
      price: 19,
      image: 'yogurtgreentea.jpg',
    ),
    FoodItem(
      id: 8,
      name: 'โยเกิร์ตสตรอเบอร์รี่',
      price: 19,
      image: 'strawberryyogurt.jpg',
    ),
    FoodItem(
      id: 9,
      name: 'โยเกิร์ตแอบเปิ้ล',
      price: 19,
      image: 'yogurtapple.jpg',
    ),
    FoodItem(
      id: 10,
      name: 'ชามะนาว',
      price: 19,
      image: 'lemonredtea.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          FoodItem item = items[index];

          return Card(
            margin: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  //<route name ของหน้าปลายทาง>
                  FoodDetails.routeName,
                  arguments: item,
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/${item.image}',
                      width: 60.0,
                      height: 60.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      item.name,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}