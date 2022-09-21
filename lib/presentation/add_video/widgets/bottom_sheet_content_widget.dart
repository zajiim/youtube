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
          backgroundColor: kGreyColor,
          child: Icon(
            icon,
            color: kBlackColor,
          ),
        ),
        k10Width,
        k10Width,
        Text(title),
      ],
    );
  }
}
