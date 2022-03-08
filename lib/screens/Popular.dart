import 'package:flutter/material.dart';
class Popular extends StatelessWidget {
  const Popular({Key? key, required this.title,required this.PressSeeAll}) : super(key: key);
  final String title;
  final VoidCallback PressSeeAll;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Popular",
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: Colors.black, fontWeight: FontWeight.w500),
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              "See All",
              style: TextStyle(color: Colors.black54),
            ))

      ],
    );
  }
}
