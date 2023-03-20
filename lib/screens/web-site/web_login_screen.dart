import 'package:flutter/material.dart';
import 'package:shopmate/screens/web-site/web_main_screen.dart';
import 'package:shopmate/utils/contants.dart';
import 'package:shopmate/widgets/matebutton.dart';
import 'package:shopmate/widgets/mateformfield.dart';
import 'package:sizer/sizer.dart';

class WebLogin extends StatelessWidget {
   // WebLogin({Key? key}) : super(key: key);
 TextEditingController? emailC;
 TextEditingController? passwordC;
 String? mylogin ='admin@gmail.com' ;
 String? mypassword = 'admin123' ;
 final formkey =GlobalKey<FormState>();
 Submit(BuildContext, context ){
   if(formkey.currentState!.validate()){

     if(emailC?.text == mylogin && passwordC?.text == mypassword){
       Navigator.push(context, MaterialPageRoute(builder: (_) => WebMainScreen()));
     }
   }
 }

 WebLogin({
   this.emailC,
   this.passwordC,
   this.mypassword,
   this.mylogin,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: Container(

            padding: EdgeInsets.symmetric(horizontal:5.w ,vertical: 5.h),
            decoration: BoxDecoration(

              border: Border.all(color: Colors.black,width: 3)
            ),
            child: Form(
              key: formkey,
              child: Column(
              mainAxisSize: MainAxisSize.min,
                children: [
                  Text("WELCOME ADMIN \n Log in to Your Account",
                    textAlign: TextAlign.center,style: ShopMate.boldStyle,),
                  MateFormField(
                    hintText: 'Email...',
                    controller: emailC,
                    validate: (v){
                      if(v!.isEmpty || !v.contains('@')){
                        return 'Please Enter Valid Email';

                      }else{
                        return null;
                      }
                  },
                  ),
                  MateFormField(
                    hintText: 'Password',
                    controller: passwordC,
                    isPassword: true,
                    validate: (v){
                      if(v!.isEmpty){
                        return "Password can't be Empty";
                      }
                    },
                  ),
                  MateButton(
                    btnText: 'Submit',
                    onPress: (){

                      Submit(BuildContext, context);
                    },
                  )

                ],
              ),
            ),
          ),
        ),
      )

    );
  }
}
