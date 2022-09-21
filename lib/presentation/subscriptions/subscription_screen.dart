import "package:flutter/material.dart";
import 'package:youtube_clone/core/constants.dart';
import 'package:youtube_clone/core/sizers.dart';
import 'package:youtube_clone/presentation/common/video_list_widget.dart';

import '../common/appbar_widget.dart';
import 'widgets/status_widget.dart';
import 'widgets/custom_chip_widget.dart';

final choiceChipList = [
  "All",
  "Today",
  "Yesterday",
  "This month",
  "This year",
];

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenDimension = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(),
        ),
        body: ListView(
          children: [
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: screenDimension.width * 0.80,
                  height: 80,
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const StatusWidget(),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: 10,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "All",
                    style: TextStyle(
                      color: kBlueColor,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
            SizedBox(
              height: 60,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomChipWidget(
                  label: choiceChipList[index],
                ),
                separatorBuilder: (context, index) => k10Width,
                itemCount: choiceChipList.length,
              ),
            ),

            Expanded(
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    VideoListWidget(screenDimension: screenDimension),
                separatorBuilder: (context, index) => k10Height,
                itemCount: 10,
              ),
            ),

            // VideoListWidget(screenDimension: screenDimension),
          ],
        ));
  }
}
