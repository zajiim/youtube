import "package:flutter/material.dart";
import 'package:youtube_clone/core/constants.dart';
import 'package:youtube_clone/core/sizers.dart';

class CustomTextButtonWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final String? subtext;
  final IconData? trailingIcon;
  const CustomTextButtonWidget({
    Key? key,
    required this.text,
    required this.icon,
    this.subtext,
    this.trailingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon),
        k15Width,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              subtext ?? "",
              style: const TextStyle(
                color: kGreyColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
        const Spacer(),
        Icon(trailingIcon),
      ],
    );
  }
}
