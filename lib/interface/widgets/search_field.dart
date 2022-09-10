import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(
          Icons.search_rounded,
          color: greyColor.withOpacity(0.7),
        ),
        suffixIcon: Icon(
          Icons.tune,
          color: greyColor.withOpacity(0.7),
        ),
        hintText: 'Search',
        contentPadding: const EdgeInsets.all(18.0),
        fillColor: greyColor.withOpacity(0.15),
        border: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(searchRadius),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(searchRadius),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(searchRadius),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(searchRadius),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(searchRadius),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(searchRadius),
        ),
      ),
    );
  }
}
