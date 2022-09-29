// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter/material.dart";
import 'package:youtube_clone/core/constants.dart';
import 'package:youtube_clone/core/sizers.dart';

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
        Container(
          width: double.infinity,
          height: 50,
          color: kBlackColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  iconSize: 30,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: kWhiteColor,
                  ),
                ),
                IconButton(
                  iconSize: 30,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
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
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: BottomPartWidget(),
          ),
        ),
        Positioned(
          bottom: 70,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
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
                k10Height,
                IndividualButtonRightPartWidget(
                  icon: Icons.thumb_down,
                  subtitle: "Dislike",
                ),
                k10Height,
                IndividualButtonRightPartWidget(
                  icon: Icons.comment,
                  subtitle: "952",
                ),
                k10Height,
                IndividualButtonRightPartWidget(
                  icon: Icons.share,
                  subtitle: "Share",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
