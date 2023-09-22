import 'package:flutter/material.dart';

Widget circularImage({continerHeight, continerWidth, image, name, context}) {
  return SizedBox(
    width: 49,
    height: 90.2,
    child: Column(
      children: [
        Container(
            width: 49,
            height: 49.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFF848484),
                width: 3.0,
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
