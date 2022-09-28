// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter/material.dart";
import 'package:youtube_clone/core/sizers.dart';

import '../../../core/constants.dart';

class IndividualButtonRightPartWidget extends StatelessWidget {
  final IconData icon;
  final String? subtitle;
  const IndividualButtonRightPartWidget({
    Key? key,
    required this.icon,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
        ),
        Text(
          subtitle.toString(),
          style:
              const TextStyle(color: kWhiteColor, fontWeight: FontWeight.w600),
        ),
        
      ],
    );
  }
}
