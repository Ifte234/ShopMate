import 'package:flutter/material.dart';

import '../utils/contants.dart';


class HomeCards extends StatelessWidget {
  String? title;
   HomeCards({
    this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            gradient: LinearGradient(
                colors: [
                  Colors.blueAccent.withOpacity(0.8),
                  Colors.redAccent.withOpacity(0.8)

                ]
            )
        ),
        child: Text(
          title?? 'GROCERY',
          style: ShopMate.boldStyle.copyWith(

              color: Colors.white
          ),
        ),

      ),
    );
  }
}