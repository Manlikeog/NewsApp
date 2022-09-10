import 'package:flutter/material.dart';

class XBox extends StatelessWidget {
  final double _width;

  const XBox(this._width, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
    );
  }
}

class YBox extends StatelessWidget {
  final double _height;

  const YBox(this._height, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
    );
  }
}

const double horizontalPadding = 20.0;
const double verticalPadding = 50.0;
const double radius = 30.0;
const double searchRadius = 15;

EdgeInsets pagePadding =
    const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 40);
