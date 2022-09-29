import "package:flutter/material.dart";
import 'package:youtube_clone/core/constants.dart';

import 'package:youtube_clone/presentation/home/widgets/home_video_widget.dart';

import 'package:youtube_clone/presentation/subscriptions/widgets/custom_chip_widget.dart';

import '../../core/sizers.dart';
import '../common/appbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenDimension = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(),
      ),
      body: ListView(
        children: [
          const Divider(),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: kGreyColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(5)),
                    height: 30,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Row(
                        children: const [
                          Icon(Icons.explore),
                          k5Width,
                          Text("Explore"),
                        ],
                      ),
                    ),
                  ),
                  k10Width,
                  Container(width: 2, color: kGreyColor.withOpacity(0.2)),
                  k10Width,
                  const CustomChipWidget(label: "All"),
                  k5Width,
                  const CustomChipWidget(label: "Graphics"),
                  k5Width,
                  const CustomChipWidget(label: "Music"),
                  k5Width,
                  const CustomChipWidget(label: "Networking"),
                  k5Width,
                  const CustomChipWidget(label: "Mix"),
                  k5Width,
                  const CustomChipWidget(label: "Trending"),
                ],
              ),
            ),
          ),
          k10Height,

          SizedBox(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  HomeVideoListWidget(screenDimension: screenDimension),
              separatorBuilder: (context, index) => k10Height,
              itemCount: 10,
            ),
          ),

          // SizedBox(
          //   height: 40,
          //   child: ListView.separated(
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (context, index) => HomeScreenChipWidget(
          //       label: choiceList[index],
          //     ),
          //     separatorBuilder: (context, index) => k10Width,
          //     itemCount: choiceList.length,
          //   ),
          // ),
        ],
      ),
    );
  }
}
