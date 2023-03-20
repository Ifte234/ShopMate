import 'package:flutter/material.dart';
import 'package:shopmate/screens/web-site/web_login_screen.dart';
import 'package:shopmate/services/home_screen.dart';
class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context , constraints){
          if(constraints.minWidth > 600){
            return WebLogin();
          }else{
            return HomeScreen();
          }
        }
    );
  }
}
