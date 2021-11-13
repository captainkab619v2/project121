import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'food_item.dart';

class FoodDetails extends StatelessWidget{

  const FoodDetails({Key? key}) : super(key: key);
  static const routeName = '/foodDetails';

  @override
  Widget build(BuildContext context) {

    var food = ModalRoute.of(context)!.settings.arguments as FoodItem;
    var shoesName;
    var starRow;
    var rating;
    var rowOfRating;
    var price;
    var shoesImage;
    return Scaffold(
        appBar: AppBar(
          title: Text('${food.name}'),
        ),
        body:  Container(
            child:  Center(
              child:  Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/${food.image}',
                    width: 320.0,
                    height: 320.0,
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
                      )], mainAxisAlignment: MainAxisAlignment.center),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('ชื่อเมนู :' '${food.name}' ,style: GoogleFonts.kanit(fontSize: 30.0)),

                        Text('ราคา :' '${food.price}' 'บาท',style: GoogleFonts.kanit(fontSize: 30.0)),

                      ],
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}