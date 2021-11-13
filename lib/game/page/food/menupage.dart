import 'package:flutter/material.dart';

class menuPage extends StatefulWidget {
  static const routeName = "/profile";
  const menuPage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<menuPage> {
  var shoesName;
  var starRow;
  var rating;
  var rowOfRating;
  var price;
  var shoesImage;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               shoesName = Text(
              "BEST SELLER",
              style: TextStyle(fontFamily: 'Sora', fontSize: 36),
            ),
                shoesName = Text(
                  "ชานมไข่มุก",
                  style: TextStyle(fontFamily: 'Sora', fontSize: 36),
                ),
              shoesImage = Container(

                  child: Image.asset('assets/images/chanom.jpg',
                    width: 250.0,
                    height: 100.0,
                  ),

              ),

              rowOfRating = Row(
          children: [starRow = Row(
            children: [
              Icon(Icons.star, color: Color.fromARGB(255, 255, 240, 0)),
              Icon(Icons.star, color: Color.fromARGB(255, 255, 240, 0)),
              Icon(Icons.star, color: Color.fromARGB(255, 255, 240, 0)),
              Icon(Icons.star, color: Color.fromARGB(255, 255, 240, 0)),
              Icon(Icons.star, color: Color.fromARGB(255, 255, 240, 0)),
            ],
          ), rating =
              Text("136 Review", style: TextStyle(fontFamily: 'Sora', fontSize: 18))], mainAxisAlignment: MainAxisAlignment.center),
                price =
                    Text("19 THB", style: TextStyle(fontFamily: 'Sora', fontSize: 18)),
              ],
            ),

          ),

        ),

      );

  }

}
