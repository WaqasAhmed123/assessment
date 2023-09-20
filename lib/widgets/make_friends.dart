import 'package:flutter/material.dart';

Widget makeFriends() {
  return Container(
    decoration: BoxDecoration(
        // color: const Color(0xFF848484),
        color: const Color(0xFF1A1A1A),
        // gradient: const LinearGradient(
        //     colors: [Color(0xFF6100ff), Color(0xffff003d)]),
        border: Border.all(),
        borderRadius: BorderRadius.circular(10)),
    width: 352,
    height: 37,
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 5),
          width: 164,
          height: 27,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xFF6100ff), Color(0xffff003d)]),
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              "Make Friends",
              style: TextStyle(
                  fontFamily: "Inter", fontSize: 11, color: Colors.white),
            ),
          ),
        ),
        // Container(
        //   margin: const EdgeInsets.only(left: 5),
        //   // width: 164,
        //   height: 27,
        //   color: Colors.transparent,
        // decoration: BoxDecoration(
        //     gradient: const LinearGradient(
        //         colors: [Color(0xFF6100ff), Color(0xffff003d)]),
        //     border: Border.all(color: Colors.transparent),
        //     borderRadius: BorderRadius.circular(10)),
        // child:
        const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text("Search Partners",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 11,
                    color: Color(0xFF848484))),
          ),
        ),
        // ),
      ],
    ),
  );
}
