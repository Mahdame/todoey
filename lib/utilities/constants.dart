import 'package:flutter/material.dart';

const mainBackgroundColor = Color(0xFF40E0D0);
const addTaskBackgroundColor = Color(0xFF757575);

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.white,
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  backgroundColor: mainBackgroundColor,
);