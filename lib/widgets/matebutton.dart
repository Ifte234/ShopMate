import 'package:flutter/material.dart';

class MateButton extends StatelessWidget {
  // const MateButton({Key? key}) : super(key: key);

  String? btnText ;
  bool? isLoginBtn;
  VoidCallback? onPress;
  bool isLoading;

  MateButton({this.btnText , this.isLoginBtn ,  this.onPress,
  this.isLoading =false});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child:Container(
        height: 55,
        margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
              color: isLoginBtn == true ? Colors.black : Colors.white,
            ),
            color: isLoginBtn == true ? Colors.white : Colors.black, borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children:[
            Visibility(
              visible: isLoading!? false : true,
              child: Center(
                child: Text( btnText == null ? 'Button' : btnText.toString() ,
                  style: TextStyle(
                      color: isLoginBtn ==true ? Colors.black : Colors.white,
                      fontSize: 14

                  ),),
              ),
            ),
            Visibility(
                visible: isLoading!,
                child: Center(

              child: CircularProgressIndicator(),
            )
            )
          ]


        ),
      ) ,
    );

  }
}
