import 'package:flutter/material.dart';
import 'package:untitled30/constants.dart';
import 'package:flutter_svg/svg.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        onSaved: (value) {},
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Search items...",
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          errorBorder: outlineInputBorder,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset("Assets/icons/Search.svg"),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultpadding, vertical: defaultpadding / 2),
            child: SizedBox(
              width: 48,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(

                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                onPressed: () {},
                child: SvgPicture.asset("Assets/icons/Filter.svg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
