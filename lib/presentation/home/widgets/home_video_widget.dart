// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter/material.dart";

import '../../../core/constants.dart';
import '../../../core/sizers.dart';

class HomeVideoListWidget extends StatelessWidget {
  const HomeVideoListWidget({
    Key? key,
    this.imgUrl,
    this.title,
    required this.screenDimension,
  }) : super(key: key);
  final String? imgUrl;
  final String? title;
  final Size screenDimension;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: screenDimension.height * 0.28,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    imgUrl.toString(),
                  ),
                ),
              ),
            ),
          ],
        ),
        k10Height,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 20,
                foregroundImage: NetworkImage(
                  "https://ik.imagekit.io/kit/users/f6/40/mrwhosetheboss-f6401d45a6aeb5c600e2719a5c3914f4.png?tr=q-35,fo-face,bg-FFFFFF,dpr-2,w-150,h-150",
                ),
              ),
              k10Width,
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title.toString(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 16),
                    ),
                    k5Height,
                    Row(
                      children: const [
                        Text(
                          "1,64,826 views",
                          style: TextStyle(
                            color: kGreyColor,
                          ),
                        ),
                        k10Width,
                        Text(
                          "Jul 1, 2016",
                          style: TextStyle(
                            color: kGreyColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.more_vert,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
