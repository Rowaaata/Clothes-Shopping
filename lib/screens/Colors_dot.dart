import 'package:untitled30/constants.dart';
import 'package:flutter/material.dart';
class Colors_dot extends StatelessWidget {
  const Colors_dot({Key? key, required this.color,required this.isActive, required this.press}) : super(key: key);

  final Color color;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(defaultpadding / 4),
        decoration: BoxDecoration(
            border: Border.all(color:isActive?  primaryColor:Colors.transparent),
            shape: BoxShape.circle),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
