// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

Widget BrandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Wallpaper',
        style: TextStyle(
          color: Colors.black87,
          fontSize: 22,
        ),
      ),
      Text(
        'Hub',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 22,
        ),
      ),
    ],
  );
}