import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled30/constants.dart';
import 'package:untitled30/screens/Colors_dot.dart';
import 'package:untitled30/screens/ProductsAll.dart';

class Details extends StatefulWidget {
  const Details({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  "Assets/icons/Heart.svg",
                  height: 20,
                ),
              ))
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            widget.product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: defaultpadding,
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.fromLTRB(defaultpadding,
                defaultpadding * 2, defaultpadding, defaultpadding),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultBorderRadius * 2),
                    topRight: Radius.circular(defaultBorderRadius * 2))),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(widget.product.title,
                            style: Theme.of(context).textTheme.headline6),
                      ),
                      const SizedBox(
                        width: defaultpadding,
                      ),
                      Text(
                        "\EGP" + widget.product.price.toString(),
                        style: Theme.of(context).textTheme.headline6,
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultpadding),
                    child: Text(
                        "A shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons."),
                  ),
                  const Text(
                    "Colors",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: defaultpadding / 2,
                  ),
                  Row(
                    children: [
                      Colors_dot(
                          color: const Color(0xFFDEB887),
                          isActive: active,
                          press: () {
                            setState(() {
                              active = !active;
                            });
                          }),
                      Colors_dot(
                          color: const Color(0xFF0000FF),
                          isActive: false,
                          press: () {}),
                      Colors_dot(
                          color: const Color(0xFF000000),
                          isActive: false,
                          press: () {}),
                    ],
                  ),
                  const SizedBox(
                    height: defaultpadding * 1.5,
                  ),
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 45,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              shape: const StadiumBorder()),
                          child: const Text("Add To Cart")),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
