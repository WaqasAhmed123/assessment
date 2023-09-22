import 'package:assessment/widgets/central_image.dart';
import 'package:assessment/widgets/circular_image.dart';
import 'package:assessment/widgets/make_friends.dart';
import 'package:assessment/widgets/my_story.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: circularImage(
                          context: context,
                          image: 'assets/amelia.png',
                          name: "Amelia"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: circularImage(
                          context: context,
                          image: 'assets/selena.png',
                          name: "Selena"),
                    ),
                    myStory(context: context),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: circularImage(
                          context: context,
                          image: 'assets/isla.png',
                          name: "Isla"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: circularImage(
                          context: context,
                          image: 'assets/freya.png',
                          name: "Freya"),
                    ),
                  ],
                ),
              ),
            ),
            makeFriends(),
            const SizedBox(
              height: 10,
            ),
            Expanded(child: centralImage()),
            Container(
              height: 81,
              decoration: BoxDecoration(
                color: const Color(0xFF1A1A1A),
                border: Border.all(),
                borderRadius: const BorderRadius.all(
                  Radius.circular(63),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 81 / 2,
                        backgroundColor: const Color(0xFFFF3062),
                        child: Image.asset('assets/home.png'),
                      ),
                      const Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          'assets/chat_line.png',
                          height: 28,
                          width: 28,
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          'assets/person.png',
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
