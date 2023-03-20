import 'package:flutter/material.dart';
class WebMainScreen extends StatelessWidget {
  const WebMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(child: Container(
            color: Colors.amber,
          )),
          Expanded(
              flex: 2,
              child: Container(
            color: Colors.greenAccent,
          ))
        ],
      ),
    );
  }
}
