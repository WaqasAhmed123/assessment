import 'package:flutter/material.dart';

Widget centralImage() {
  return Container(
    child: Stack(
      children: [
        Positioned(
          top: 58,
          left: 2,
          child: Center(
            child: Image.asset(
              "assets/fourth_image.png",
              width: 308.73,
              height: 375.53,
            ),
          ),
        ),
        Positioned(
            top: 25,
            left: 0,
            child: Center(
              child: Image.asset("assets/third_image.png",
                  width: 320.94, height: 396.47),
            )),
        Positioned(
          // top: 17,
          child: Image.asset(
            "assets/milly.png",
            width: 342,
            height: 416,
          ),
        ),
      ],
    ),
  );
}
