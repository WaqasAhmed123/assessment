import 'package:flutter/material.dart';

Widget myStory({context}) {
  return SizedBox(
      width: 65,
      height: 90.2,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 62.35,
            height: 62.35,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: CircleAvatar(
                    radius: 31.175,
                    child: Image.asset('assets/my story.png'),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 45,
                  child: CircleAvatar(
                    radius: 13.27 / 2,
                    child: Container(
                      width: 13.27,
                      height: 13.27,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Color(0xFF6100ff), Color(0xffff003d)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 8,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "My Story",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ));
}
