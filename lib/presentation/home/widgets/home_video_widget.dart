// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import "package:flutter/material.dart";
import 'package:youtube_clone/presentation/video_details/video_details_screen.dart';

import '../../../core/constants.dart';
import '../../../core/sizers.dart';

class HomeVideoListWidget extends StatelessWidget {
  HomeVideoListWidget({
    Key? key,
    this.imgUrl,
    this.title,
    this.channelName,
    this.viewCount,
    required this.screenDimension,
    required this.channelAvatar,
    required this.videoID,
  }) : super(key: key);
  final String? imgUrl;
  final String? title;
  final String channelAvatar;
  final String? channelName;
  final String? viewCount;
  final Size screenDimension;

  final videoID;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VideoDetailsScreen(
                  videoId: videoID,
                  title: title.toString(),
                  channelName: channelName.toString(),
                ),
              ),
            );
          },
          child: Container(
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
        ),
        k10Height,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              CachedNetworkImage(
                imageUrl: channelAvatar.toString(),
                imageBuilder: (context, imageProvider) {
                  return CircleAvatar(
                    backgroundImage: imageProvider,
                  );
                },
              ),
              // CircleAvatar(
              //   radius: 20,
              //   // foregroundColor: Colors.transparent,
              //   // backgroundColor: Colors.transparent,
              //   // backgroundImage: NetworkImage(
              //   //   channelAvatar.toString(),
              //   // ),
              //   foregroundImage: CachedNetworkImage(imageUrl: channelAvatar.toString()),
              // ),
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
                      children: [
                        Expanded(
                          child: SizedBox(
                            // width: screenDimension.width * .40,
                            child: Text(
                              channelName.toString(),
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: kGreyColor,
                              ),
                            ),
                          ),
                        ),
                        k10Width,
                        Text(
                          "$viewCount Views",
                          style: const TextStyle(
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
