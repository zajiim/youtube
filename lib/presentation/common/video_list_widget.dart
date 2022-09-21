import "package:flutter/material.dart";

import '../../core/constants.dart';
import '../../core/sizers.dart';

class VideoListWidget extends StatelessWidget {
  const VideoListWidget({
    Key? key,
    required this.screenDimension,
  }) : super(key: key);

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
              color: Colors.yellow,
            ),
            Positioned(
              bottom: 12,
              right: 12,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                height: 23,
                width: 85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: kWhiteColor,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/shorts_logo.png'),
                    const Text(
                      "SHORTS",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        k10Height,
        Row(
          children: [
            const CircleAvatar(
              radius: 20,
              foregroundImage: NetworkImage(
                "https://ik.imagekit.io/kit/users/f6/40/mrwhosetheboss-f6401d45a6aeb5c600e2719a5c3914f4.png?tr=q-35,fo-face,bg-FFFFFF,dpr-2,w-150,h-150",
              ),
            ),
            k10Width,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Heart Touching Nasheed #Shorts",
                  style: TextStyle(fontSize: 16),
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
            const Spacer(),
            const Icon(
              Icons.more_vert,
            ),
          ],
        ),
      ],
    );
  }
}
