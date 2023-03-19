import 'package:flutter/material.dart';
import 'package:shopmate/screens/login_screen.dart';
import 'package:shopmate/widgets/mateformfield.dart';

import '../utils/contants.dart';
import '../widgets/matebutton.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController emailC =TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController retypepasswordC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SafeArea(child:
      Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text('WELCOME, \n PLEASE CREATE YOUR ACCOUNT',
              textAlign: TextAlign.center,style: ShopMate.boldStyle,),
            Form(child: Column(
              children: [
                MateFormField(
                  controller: emailC,
                  hintText: 'Enter Your Email',
                ),
                MateFormField(
                  controller: passC,
                  isPassword: true,
                  hintText: 'Enter Your Password',
                ),
                MateFormField(
                  controller: retypepasswordC,
                  hintText: 'Retype Your Password',
                  isPassword: true,
                ),
                MateButton(btnText: 'SIGNUP',isLoginBtn: false,),


              ],
            )),
            MateButton(btnText: 'BACK TO LOGIN',
              isLoginBtn: true, onPress: () {
                Navigator.pop(context);
              },
            )
          ],

        ),

      )
      ),
    );
  }
}
