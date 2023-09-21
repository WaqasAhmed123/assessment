import 'package:flutter/material.dart';

Widget circularImage({continerHeight, continerWidth, image, name, context}) {
  return SizedBox(
    width: 49,
    // height: 115,
    height: 90.2,

    // height: 115,
    child: Column(
      children: [
        Container(
            width:
                49, // Set the width and height to control the size of the avatar
            height: 49.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(
                    0xFF848484), // Customize the color of the circular border
                width: 3.0, // Customize the width of the circular border
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  image,
                ),
              ),
            )),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    ),
  );
}
