import "package:flutter/material.dart";

import '../../core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     Image.asset('assets/images/youtube_logo_light.png'),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: [
    //         IconButton(
    //           onPressed: () {},
    //           icon: const Icon(
    //             Icons.cast,
    //           ),
    //         ),
    //         IconButton(
    //           onPressed: () {},
    //           icon: const Icon(
    //             Icons.notifications,
    //           ),
    //         ),
    //         IconButton(
    //           onPressed: () {},
    //           icon: const Icon(
    //             Icons.search,
    //           ),
    //         ),
    //         const CircleAvatar(
    //           radius: 18,
    //           backgroundImage: AssetImage(
    //             'assets/images/avatar.jpg',
    //           ),
    //           backgroundColor: Colors.transparent,
    //         )
    //       ],
    //     ),
    //   ],
    // );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            leadingWidth: 100,
            leading: Image.asset(
              'assets/images/youtube_logo_light.png',
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.cast,
                ),
                color: kBlackColor,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                ),
                color: kBlackColor,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                ),
                color: kBlackColor,
              ),
              const CircleAvatar(
                radius: 18,
                foregroundImage: AssetImage(
                  'assets/images/avatar.jpg',
                ),
                backgroundColor: Colors.transparent,
              )
            ],
          ),
        ],
      ),
    );
  }
}
