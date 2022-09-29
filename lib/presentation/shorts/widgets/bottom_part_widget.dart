import "package:flutter/material.dart";
import 'package:youtube_clone/core/sizers.dart';

import '../../../core/constants.dart';

class BottomPartWidget extends StatelessWidget {
  const BottomPartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 18,
            foregroundImage: AssetImage(
              'assets/images/avatar.jpg',
            ),
          ),
          k10Width,
          const Text(
            "SADEK Tuts",
            style: TextStyle(
              color: kWhiteColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          k10Width,
          ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(
                kRedColor,
              ),
            ),
            onPressed: () {},
            child: const Text(
              "SUBSCRIBE",
              style: TextStyle(color: kWhiteColor),
            ),
          ),
          const Spacer(),
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              color: kGreyColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Icon(
              Icons.graphic_eq,
              color: kWhiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
