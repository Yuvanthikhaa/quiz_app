import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';

class Buttonn extends StatelessWidget {
  const Buttonn({super.key, required this.anstext, required this.ontap});
  //if placed inside the flower brackets, they're named arguments. outside the bracket, they're positional arguments
  final String anstext;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            primary: Colors.green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(anstext));
  }
}
