import "package:flutter/material.dart";
import 'package:youtube_clone/core/constants.dart';
import 'package:youtube_clone/presentation/add_video/widgets/bottom_sheet_content_widget.dart';

class AddVideoScreen extends StatelessWidget {
  const AddVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kBlackColor),
          ),
          onPressed: () {
            showShortsSheet(context);
          },
          child: const Text("Add Video")),
    ));
  }
}

showShortsSheet(BuildContext context) {
  final screenDimension = MediaQuery.of(context).size;
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      context: context,
      builder: (context) {
        return SizedBox(
          height: screenDimension.height * 0.3,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Create",
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                    ),
                  ),
                ],
              ),
              const BottomSheetContentsWidget(
                icon: Icons.video_collection_outlined,
                title: "Create a Short",
              ),
              const BottomSheetContentsWidget(
                icon: Icons.file_upload_outlined,
                title: "Upload a video",
              ),
              const BottomSheetContentsWidget(
                icon: Icons.settings_input_antenna,
                title: "Go Live",
              ),
            ],
          ),
        );
      });
}
