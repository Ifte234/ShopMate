import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MateFormField extends StatefulWidget {
  // MateFormField({Key? key}) : super(key: key);
  String? hintText;
  TextEditingController? controller;
  String? Function(String?)? validate;
  bool? isPassword;
  Widget? icon;
  // IconData? icon;
  bool? check;
  final TextInputAction? inputAction;
  final FocusNode? focusNode;

  MateFormField(
      {super.key,
      this.hintText,
      this.controller,
      this.validate,
      this.isPassword,
      this.icon,
      this.check,
      this.inputAction,
        this.focusNode
      });

  @override
  State<MateFormField> createState() => _MateFormFieldState();
}

class _MateFormFieldState extends State<MateFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validate,
        focusNode: widget.focusNode,
        textInputAction: widget.inputAction,
        obscureText: widget.isPassword == true ? true : false,
        decoration: InputDecoration(
            // suffixIcon: IconButton(
            //     onPressed: (){
            //   if(widget.isPassword == true){
            //     setState((){
            //      widget.isPassword = false;
            //     });
            //   }else{
            //     setState((){
            //       widget.isPassword = false;
            //     });
            //   }
            // }, icon: widget.isPassword == true ? Icon(Icons.visibility) :
            //     Icon(Icons.visibility_off),
            // ),

            contentPadding: EdgeInsets.only(left: 10, top: 12),
            border: InputBorder.none,
            hintText: widget.hintText ?? 'hintText...',
            // hintText == null?'hintText...' : hintText,
            suffixIcon: widget.icon),
      ),
    );
  }
}
