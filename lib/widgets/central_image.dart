import 'dart:ui';

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
        Positioned(
            left: 15,
            top: 40,
            child: Column(
              children: [
                Image.asset(
                  "assets/fb.png",
                  height: 34,
                  width: 34,
                ),
                const SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  backgroundColor: const Color(0xFF0D0D0D).withOpacity(0.45),
                  radius: 17,
                  child: Image.asset("assets/instagram.png"),
                ),
              ],
            )),
        Positioned(
          left: 15,
          top: 300,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(59),
            ),
            width: 293,
            height: 69,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(59),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(59),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10.0,
                    sigmaY: 10.0,
                  ),
                  child: Container(
                    width: 293,
                    height: 69,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7a2d4a).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(59),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25.5,
                        child: Image.asset("assets/milly_small_circular.png"),
                      ),
                      title: const Text(
                        "Milly",
                        style: TextStyle(
                            fontFamily: "SFProRounded",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      subtitle: const Text("London, UK",
                          style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 11,
                              color: Colors.white)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xFFFF3062),
                            radius: 22.5,
                            child: Image.asset("assets/cross.png"),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 22.5 * 2,
                            height: 22.5 * 2,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [Color(0xFF6100ff), Color(0xffff003d)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Image.asset("assets/heart.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
