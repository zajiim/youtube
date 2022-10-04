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
import 'package:youtube_clone/presentation/home/widgets/home_video_widget.dart';
import 'package:youtube_clone/presentation/video_details/widgets/icon_widget.dart';
import 'package:youtube_clone/presentation/video_details/widgets/video_player_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDetailsScreen extends StatelessWidget {
  VideoDetailsScreen(
      {super.key,
      required this.videoId,
      required this.channelName,
      required this.title});
  final String videoId;
  final String channelName;
  final String title;

  @override
  Widget build(BuildContext context) {
    final Size screenDimension = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: screenDimension.height * 0.35,
            child: VideoPlayerWidget(
              videoID: videoId,
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Text("Lorem Ipsom... sfhi bdfjber  dfuf,.isdfhi fdfdfe"),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              Text("3278 views ."),
              Text("Premiered Jul 1, 2001"),
            ],
          ),
          Row(
            children: [
              IconWidget(
                icon: Icons.thumb_up_off_alt_outlined,
                text: "22.4K",
              ),
              IconWidget(
                icon: Icons.thumb_down_alt_outlined,
                text: "65",
              ),
              IconWidget(
                icon: Icons.share_outlined,
                text: "Share",
              ),
              IconWidget(
                icon: Icons.download_outlined,
                text: "Download",
              ),
              IconWidget(
                icon: Icons.add_business_outlined,
                text: "Save",
              ),
            ],
          ),
          const Divider(),
          Row(
            children: [
              CircleAvatar(),
              Column(
                children: [
                  Text("Voice of Books"),
                  Text("289K Subscribe"),
                ],
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "SUBSCRIBE",
                  style: TextStyle(
                    color: kRedColor,
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          Row(
            children: [
              Text("Comments"),
              Icon(Icons.unfold_more),
            ],
          ),
          Row(
            children: [
              CircleAvatar(),
              Text("Awesome content, but presentation is boring"),
            ],
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return HomeVideoListWidget(
                  imgUrl:
                      "https://images.hindustantimes.com/rf/image_size_630x354/HT/p2/2020/01/13/Pictures/_53cfbde6-3602-11ea-8a26-bda02fe1f8d7.jpg",
                  screenDimension: screenDimension,
                  channelAvatar: "",
                  videoID: "");
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
