import "package:flutter/material.dart";

import '../../../core/constants.dart';



class BottomPartWidget extends StatelessWidget {
  const BottomPartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          foregroundImage: AssetImage(
            'assets/images/avatar.jpg',
          ),
        ),
       const Text(
          "SADEK Tuts",
          style: TextStyle(
            color: kWhiteColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
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
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: kGreyColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child:const Icon(
            Icons.graphic_eq,
            color: kWhiteColor,
          ),
        ),
      ],
    );
  }
}
