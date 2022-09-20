import "package:flutter/material.dart";

import '../../../core/constants.dart';
import '../../../core/sizers.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 70,
      child: Column(
        children: [
          Stack(
            children: [
              const CircleAvatar(
                foregroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs2X0t7MaTapzqYae06C-HfMUefHPUrQ3oPeahb8ykgAeX_p8sjQiTnxnQbA&s",
                ),
              ),
              Positioned(
                bottom: 2,
                right: 2,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: const BoxDecoration(
                    color: kBlueColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          k5Height,
          const Text(
            "Marques",
            style: TextStyle(
              color: kGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
