import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
  title: Text('ShopMate'),
),
      body: SafeArea(child:
      Container(
        width: double.infinity,
        child: Column(
          children: [
             Text('Welcome, \n Please Login')
          ],
        ),
      )
      ),
    );
  }
}
