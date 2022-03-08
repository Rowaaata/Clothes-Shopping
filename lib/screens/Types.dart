import 'package:flutter/material.dart';
import 'package:untitled30/constants.dart';
import 'package:flutter_svg/svg.dart';


class Types extends StatelessWidget {


  const Types(
      {Key? key, required this.Icon, required this.title, required this.press})
      : super(key: key);
  final String Icon, title;
  final VoidCallback press;


  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
    ),
        ),
    child: Padding(
    padding: const EdgeInsets.symmetric(
    vertical: defaultpadding / 2, horizontal: defaultpadding / 2),
    child: Column(
    children: [
    SvgPicture.asset(Icon),
    const SizedBox(height: defaultpadding / 2,),

    Text(
    title,
    style: Theme
        .of(context)
        .textTheme
        .subtitle2,
    )
    ],
    ),
    ),
    );
  }
}


