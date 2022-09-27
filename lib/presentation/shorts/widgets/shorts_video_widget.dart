// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter/material.dart";
import 'package:youtube_clone/core/constants.dart';

import 'bottom_part_widget.dart';
import 'individual_button_right_part_widget.dart';

class ShortsVideoWidget extends StatelessWidget {
  final int index;
  const ShortsVideoWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenDimension = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Positioned(
          left: 0,
          bottom: 50,
          child: SizedBox(
            width: screenDimension.width * 0.75,
            height: 70,
            child: const Text(
              "DIY Toys | Satisfying And Relaxing | SADEK Tuts Tiktok Competition | Fidget Trading #SADEK #Shorts tiktok",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 16,
              ),
            ),
          ),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: BottomPartWidget(),
        ),
        Positioned(
          bottom: 70,
          right: 0,
          child: Column(
            children: const [
              IndividualButtonRightPartWidget(
                icon: Icons.more_horiz,
                subtitle: "",
              ),
              IndividualButtonRightPartWidget(
                icon: Icons.thumb_up,
                subtitle: "245K",
              ),
              IndividualButtonRightPartWidget(
                icon: Icons.thumb_down,
                subtitle: "Dislike",
              ),
              IndividualButtonRightPartWidget(
                icon: Icons.comment,
                subtitle: "952",
              ),
              IndividualButtonRightPartWidget(
                icon: Icons.share,
                subtitle: "Share",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
