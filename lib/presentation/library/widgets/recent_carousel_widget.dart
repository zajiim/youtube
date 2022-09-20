import "package:flutter/material.dart";

import '../../../core/constants.dart';

class RecentCarousel extends StatelessWidget {
  const RecentCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 120,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/swiss.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 5,
                bottom: 15,
                child: Container(
                  height: 15,
                  width: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.black.withOpacity(
                      0.7,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "10:15",
                      style: TextStyle(
                        fontSize: 8,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 3,
                child: Container(
                  height: 5,
                  width: 160,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Expanded(
                    child: Text(
                      "Heart Touching Nasheed #Shorts",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: Icon(
                  //     Icons.more_vert,
                  //   ),
                  // ),
                  Icon(
                    Icons.more_vert,
                  ),
                ],
              ),
              const Text(
                "An Naffe",
                style: TextStyle(
                  fontSize: 18,
                  color: kGreyColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
