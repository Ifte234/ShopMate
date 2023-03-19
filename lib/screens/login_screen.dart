import 'package:flutter/material.dart';
import 'package:shopmate/screens/signup_screen.dart';
import 'package:shopmate/widgets/mateformfield.dart';

import '../utils/contants.dart';
import '../widgets/matebutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

// appBar: AppBar(
//   title: Text('ShopMate'),
// ),
      body: SafeArea(child:
      Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
             Text('Welcome, \n Please Login First',
             textAlign: TextAlign.center,style: ShopMate.boldStyle,),
            Form(child: Column(
              children: [
                MateFormField(
                  hintText: 'Enter Your Email',
                ),
                MateFormField(
                  hintText: 'Enter Your Password',
                ),
                MateButton(btnText: 'LOGIN',isLoginBtn: false,
                // onPress: (){},
                ),


              ],
            )),
            MateButton(btnText: 'CREATE NEW ACCOUNT',
              isLoginBtn: true,
              onPress: (){
                print('Button pressed!');
              Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpScreen()));
              },
            )
          ],

        ),

      )
      ),
    );
  }
}
