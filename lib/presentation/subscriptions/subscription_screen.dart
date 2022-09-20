import "package:flutter/material.dart";
import 'package:youtube_clone/core/constants.dart';
import 'package:youtube_clone/core/sizers.dart';

import '../common/appbar_widget.dart';
import '../library/widgets/status_widget.dart';

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
                    itemCount: 5,
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
          ],
        ));
  }
}
