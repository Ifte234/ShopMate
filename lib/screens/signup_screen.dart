import 'package:flutter/material.dart';
import 'package:shopmate/screens/login_screen.dart';
import 'package:shopmate/services/firebase_services.dart';
import 'package:shopmate/widgets/mateformfield.dart';

import '../utils/contants.dart';
import '../widgets/matebutton.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController retypepasswordC = TextEditingController();
  bool ispassword = true;
  bool isretypepassword = true;

  FocusNode? passwordfocus;
  FocusNode? retypepasswordfocus;

  final formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailC.dispose();
    passC.dispose();
    retypepasswordC.dispose();
    super.dispose();
  }
  Future<void> ecoDialogue(String error) async{
    showDialog(context: context, builder: (_){
      return AlertDialog(
        title: Text(error),
        actions: [
          MateButton(
              onPress: (){
            Navigator.pop(context);
          },  btnText: 'CLOSE')
        ],
      );
    });
  }


  submit() async {
    if(formkey.currentState!.validate()){
      if(passC.text == retypepasswordC.text){
        FirebaseServices.createaccount(emailC.text, passC.text).then((value) => 
        Navigator.push(context, MaterialPageRoute(builder: (_) =>LoginScreen() ))
        );
print('object');
        return ecoDialogue('YES MATCHED');
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'WELCOME, \n PLEASE CREATE YOUR ACCOUNT',
              textAlign: TextAlign.center,
              style: ShopMate.boldStyle,
            ),
            Form(
                key: formkey,
                child: Column(
                  children: [
                    MateFormField(
                      controller: emailC,
                      hintText: 'Enter Your Email',
                      icon: Icon(Icons.email),
                      inputAction: TextInputAction.next,
                      validate: (v) {
                        if (v!.isEmpty || !v.contains("@")) {
                          return 'Please Enter Valid email ! \n Email is not Correct ';
                        }
                        return null;
                      },
                    ),
                    MateFormField(
                        controller: passC,
                        isPassword: ispassword,
                        hintText: 'Enter Your Password',
                        inputAction: TextInputAction.next,
                        focusNode: passwordfocus,
                        validate: (v) {
                          if (v!.isEmpty) {
                            return "Password can't be null";
                          }
                          return null;
                        },
                        icon: IconButton(
                          onPressed: () {
                            setState(() {
                              ispassword = !ispassword;
                            });
                          },
                          icon: ispassword
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        )),
                    MateFormField(
                      controller: retypepasswordC,
                      hintText: 'Retype Your Password',
                      isPassword: isretypepassword,
                      focusNode: retypepasswordfocus,
                      validate: (v) {
                        if (v!.isEmpty) {
                          return "Password can't be Empty";
                        }
                      },
                      icon: IconButton(
                        onPressed: () {
                          setState(() {
                            isretypepassword = !isretypepassword;
                          });
                        },
                        icon: isretypepassword
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                    ),
                    MateButton(
                        btnText: 'SIGNUP',
                        isLoading : true,
                        isLoginBtn: false,
                        onPress: () {
                          submit();
                        }),
                  ],
                )),
            MateButton(
              btnText: 'BACK TO LOGIN',
              isLoginBtn: true,
              onPress: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      )),
    );
  }
}
