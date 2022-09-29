// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter/material.dart";
import 'package:youtube_clone/core/sizers.dart';

import '../../../core/constants.dart';

class BottomSheetContentsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const BottomSheetContentsWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: kGreyColor.withOpacity(0.2),
          child: Icon(
            icon,
            color: kBlackColor,
          ),
        ),
        k10Width,
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
