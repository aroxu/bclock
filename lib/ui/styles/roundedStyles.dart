import 'package:flutter/material.dart';

var roundedStyles = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(16),
  border: Border.all(
    color: Colors.grey[50],
  ),
  boxShadow: [
    BoxShadow(
      color: Colors.black26,
      offset: Offset(5, 2),
      blurRadius: 3.0,
      spreadRadius: 0.0,
    ),
    BoxShadow(
      color: Colors.white,
      offset: Offset(-5, -2),
      blurRadius: 3.0,
      spreadRadius: 0.0,
    ),
  ],
);
