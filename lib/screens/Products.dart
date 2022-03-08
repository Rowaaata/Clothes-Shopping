import 'package:flutter/material.dart';
import 'package:untitled30/constants.dart';
import 'ProductsAll.dart';

class Products extends StatelessWidget {
  const Products(
      {Key? key,
      required this.image,
      required this.title,
      required this.bgColor,
      required this.Price,
      required this.press})
      : super(key: key);
  final String image, title;
  final Color bgColor;
  final int Price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: EdgeInsets.all(defaultpadding / 2),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius:
                const BorderRadius.all(Radius.circular(defaultBorderRadius))),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: bgColor),
              child: Image.asset(
                image,
                height: 130,
              ),
            ),
            const SizedBox(
              height: defaultpadding / 2,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.black54),
                  ),
                ),
                const SizedBox(
                  width: defaultpadding / 4,
                ),
                Text(
                  "\EGP" + Price.toString(),
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
