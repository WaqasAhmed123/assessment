import 'package:assessment/widgets/circular_image.dart';
import 'package:assessment/widgets/my_story.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 46, left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  "Techoniq",
                  style: TextStyle(
                      fontFamily: "SFProRounded",
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white),
                ),
                const Spacer(),
                CircleAvatar(
                  radius: 16.5,
                  backgroundColor: Colors.transparent,
                  // backgroundImage: const AssetImage('assets/profile_image.png'),
                  child: Container(
                    width: 33.0,
                    height: 33.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0xFF6100ff), Color(0xffff003d)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: const Icon(
                      Icons.notifications_none,
                      size: 24.0,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  circularImage(
                      context: context,
                      image: 'assets/amelia.png',
                      name: "Amelia"),
                  circularImage(
                      context: context,
                      image: 'assets/amelia.png',
                      name: "Amelia"),
                  myStory(context: context),
                  circularImage(
                      context: context, image: 'assets/isla.png', name: "Isla"),
                  circularImage(
                      context: context, image: 'assets/freya.png', name: "Freya"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
