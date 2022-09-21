// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter/material.dart";

import '../../../core/constants.dart';

class CustomChipWidget extends StatelessWidget {
  final isSelected = false;
  final String label;
  const CustomChipWidget({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor:
          (isSelected == true) ? kGreyColor : kGreyColor.withOpacity(0.3),
      padding: const EdgeInsets.all(5),
      label: Text(
        label,
      ),
    );
  }
}
