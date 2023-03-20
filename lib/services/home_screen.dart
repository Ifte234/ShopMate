import 'package:flutter/material.dart';

import '../utils/contants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
  List images=["https://cdn.pixabay.com/photo/2016/03/02/20/13/grocery-1232944_1280.jpg" ,
  "https://cdn.pixabay.com/photo/2019/07/13/16/44/woman-4335235_1280.jpg" ,
    "https://cdn.pixabay.com/photo/2018/01/25/08/14/beverages-3105631_1280.jpg" ,
    "https://cdn.pixabay.com/photo/2016/11/29/07/45/desserts-1868181_1280.jpg" ,
    "https://cdn.pixabay.com/photo/2016/03/27/22/08/colorful-1284475_1280.jpg" ,
    "https://cdn.pixabay.com/photo/2016/07/24/21/01/thermometer-1539191_1280.jpg" ,
    "https://cdn.pixabay.com/photo/2015/07/30/14/36/hypertension-867855_1280.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                'HOMESCREEN',
                style: ShopMate.boldStyle,
              ),
            ),
           CarouselSlider(items: images.map((e) => Stack(
             children:[ Padding(
               padding: const EdgeInsets.all(8.0),
               child:
               ClipRRect(

                   borderRadius: BorderRadius.circular(19),
                   child: Image.network(e,
                   fit: BoxFit.cover,
                   height: 200,
                   width: 200,)),
             ),
               Padding(
                   padding: const EdgeInsets.all(8.0),
                   child:
               Container(
                 height: 200,
                 width: 200,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(19),
                   gradient: LinearGradient(
                     colors: [
                       Colors.blueAccent.withOpacity(0.3),
                       Colors.redAccent.withOpacity(0.3)
                     
                     ]
                   )
                 ),
               )
               ),
               Positioned(
                 top:3 ,
                 left: 4,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     decoration: BoxDecoration(
                       color: Colors.black.withOpacity(0.6),
                       borderRadius: BorderRadius.circular(7)
                     ),
                     child: Text('TITLE' , style: TextStyle(
                       fontSize: 20,
                       color: Colors.white
                     ),
                     ),
                   ),
                 ),
               )
           ])).toList(),
               options: CarouselOptions(
                 height: 200,
                 autoPlay: true
               ))
            
          ],
        ),
      ),
    );
  }
}
