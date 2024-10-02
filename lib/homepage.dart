import 'package:flutter/material.dart';
import 'package:iworth/utils/reusables/appbarwid.dart';
import 'package:iworth/utils/styles/stylings.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbbarwid(context),
      backgroundColor: Stylings.bgColor
    );
  }
}
