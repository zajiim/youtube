// import "package:flutter/material.dart";
// import 'package:youtube_clone/core/constants.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class VideoDetailsScreen extends StatefulWidget {
//   VideoDetailsScreen({super.key, required this.videoId, required this.title});
//   final String? videoId;
//   final String title;

//   @override
//   State<VideoDetailsScreen> createState() => _VideoDetailsScreenState();
// }

// class _VideoDetailsScreenState extends State<VideoDetailsScreen> {
//   final videoUrl = "https://www.youtube.com/watch?v=eJPLiT1kCSM";
//   late YoutubePlayerController _controller;

//   @override
//   void initState() {
//     final videoId = YoutubePlayer.convertUrlToId(videoUrl);
//     _controller = YoutubePlayerController(
//       initialVideoId: videoId!,
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Size screenDimension = MediaQuery.of(context).size;
//     return Scaffold(
//       body: ListView(
//         children: [

//           SizedBox(
//             width: double.infinity,
//             height: screenDimension.height * 0.35,
//             child: YoutubePlayer(
//               controller: _controller,
//               showVideoProgressIndicator: true,
//               bottomActions: [
//                 CurrentPosition(),
//                 ProgressBar(
//                   isExpanded: true,
//                   colors: ProgressBarColors(
//                     backgroundColor: kGreyColor,
//                     bufferedColor: kGreyColor.withOpacity(0.5),
//                     playedColor: kWhiteColor,
//                     handleColor: kRedColor,
//                   ),
//                 ),
//                 const PlaybackSpeedButton(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import "package:flutter/material.dart";
import 'package:youtube_clone/core/constants.dart';
import 'package:youtube_clone/core/sizers.dart';
import 'package:youtube_clone/presentation/home/widgets/home_video_widget.dart';
import 'package:youtube_clone/presentation/video_details/widgets/icon_widget.dart';
import 'package:youtube_clone/presentation/video_details/widgets/video_player_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDetailsScreen extends StatelessWidget {
  VideoDetailsScreen(
      {super.key,
      required this.videoId,
      required this.channelName,
      required this.title,
      required this.channelAvatar,
      required this.likeCount,
      required this.viewCount,
      required this.publishedAt,
      required this.imgUrl});
  final String videoId;
  final String channelName;
  final String title;
  final String channelAvatar;
  final String likeCount;
  final String viewCount;
  final String publishedAt;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    final Size screenDimension = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: screenDimension.height * 0.30,
            child: VideoPlayerWidget(
              videoID: videoId,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "$viewCount views . ",
                      style: const TextStyle(color: kGreyColor, fontSize: 15),
                    ),
                    Text(
                      "Published $publishedAt",
                      style: const TextStyle(color: kGreyColor, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconWidget(
                  icon: Icons.thumb_up_off_alt_outlined,
                  text: likeCount,
                ),
                const IconWidget(
                  icon: Icons.thumb_down_alt_outlined,
                  text: "65",
                ),
                const IconWidget(
                  icon: Icons.share_outlined,
                  text: "Share",
                ),
                const IconWidget(
                  icon: Icons.download_outlined,
                  text: "Download",
                ),
                const IconWidget(
                  icon: Icons.add_business_outlined,
                  text: "Save",
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                CircleAvatar(
                  foregroundImage: NetworkImage(channelAvatar),
                ),
                k10Width,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      channelName,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    const Text(
                      "289K Subscribe",
                      style: TextStyle(color: kGreyColor),
                    ),
                  ],
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "SUBSCRIBE",
                    style: TextStyle(
                      color: kRedColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: const [
                Text("Comments"),
                Spacer(),
                Icon(Icons.unfold_more),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: const [
                CircleAvatar(
                  backgroundColor: kGreenColor,
                  radius: 14,
                  child: Text('M'),
                ),
                k10Width,
                k10Width,
                Text(
                  "Awesome content, but presentation is boring",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
          k10Height,
          k10Height,
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return HomeVideoListWidget(
                imgUrl: imgUrl,
                screenDimension: screenDimension,
                channelAvatar: channelAvatar,
                videoID: videoId,
                title: title,
              );
            },
            itemCount: 10,
          ),
        ],
      ),
    );
  }
}

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key, this.videoID});
  final videoID;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late final videoUrl = "https://www.youtube.com/watch?v=$widget.videoID";
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(initialVideoId: videoId!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      bottomActions: [
        CurrentPosition(),
        ProgressBar(
          isExpanded: true,
          colors: ProgressBarColors(
            backgroundColor: kGreyColor,
            bufferedColor: kGreyColor.withOpacity(0.5),
            playedColor: kWhiteColor,
            handleColor: kRedColor,
          ),
        ),
        const PlaybackSpeedButton(),
        FullScreenButton(),
      ],
    );
  }
}
