import 'package:assessment/widgets/central_image.dart';
import 'package:assessment/widgets/circular_image.dart';
import 'package:assessment/widgets/make_friends.dart';
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
            const SizedBox(
              height: 30,
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
            Expanded(child: centralImage()),
            SizedBox(
              height: 81,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(63),
                child: BottomAppBar(
                  height: 81,
                  color: const Color(0xFF1A1A1A),
                  // notchMargin: 10,
                  // shape: AutomaticNotchedShape(
                  // CircleBorder(),
                  //   StadiumBorder(),
                  // ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        children: [
                          Container(
                            height: 81,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFFF3062),
                            ),
                            child: const Center(
                              child: Icon(Icons.home, color: Colors.white),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
            // implement the big floating action button
            // floatingActionButton: FloatingActionButton.large(
            //   onPressed: () {
            //     debugPrint("Floating Action Button Pressed");
            //   },
            //   backgroundColor: Colors.amber,
            //   shape: ShapeBorder.lerp(
            //     const CircleBorder(),
            //     const StadiumBorder(),
            //     0.5,
            //   ),
            //   child: const Icon(Icons.add),
            // ),
            // position the floating action button
            //   floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
            // );

            // SizedBox(
            //   height: 81, // Set the height of the BottomAppBar
            //   width: 346,

            //   child: ClipRRect(
            //     // borderRadius: const BorderRadius.only(
            //     //   topLeft: Radius.circular(20.0), // Adjust the radius as needed
            //     //   topRight: Radius.circular(20.0),
            //     // ),
            //     borderRadius: const BorderRadius.all(
            //       Radius.circular(63), // Adjust the radius as needed
            //       // topRight: Radius.circular(20.0),
            //     ),
            //     child:
            //         //   BottomNavigationBar(
            //         //     type: BottomNavigationBarType.fixed,
            //         //     backgroundColor: const Color(0xFF1A1A1A),
            //         //     // fixedColor: const Color(0xFF1A1A1A),
            //         //     items: const [
            //         //       BottomNavigationBarItem(
            //         //           label: '',
            //         //           icon: CircleAvatar(
            //         //             radius: 81 / 2,
            //         //             backgroundColor: Color(0xFFFF3062),
            //         //             child: Icon(Icons.home),
            //         //           )),
            //         //       BottomNavigationBarItem(
            //         //         icon: Icon(Icons.add),
            //         //         label: '',
            //         //       ),
            //         //       BottomNavigationBarItem(
            //         //         icon: Icon(Icons.chat),
            //         //         label: '',
            //         //       ),
            //         //       BottomNavigationBarItem(
            //         //         icon: Icon(Icons.person),
            //         //         label: '',
            //         //       ),
            //         //     ],
            //         //   ),
            //         // )
            //         BottomAppBar(
            //       color: const Color(
            //           0xFF1A1A1A), // Background color for the BottomAppBar
            //       // child:
            //       //  Container(
            //       //   height: 81, // Set the height of the BottomAppBar
            //       //   decoration: BoxDecoration(
            //       //     color: const Color(0xFF1A1A1A),
            //       //     borderRadius: BorderRadius.circular(63),
            //       //   ),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceAround,
            //         children: [
            //           CircleAvatar(
            //             radius: 0, // Set radius to 0, which will be ignored
            //             backgroundColor: const Color(0xFFFF3062),
            //             child: Container(
            //               width: 40, // Set a fixed width
            //               height: 40, // Set a fixed height
            //               decoration: const BoxDecoration(
            //                 shape: BoxShape.circle,
            //                 color: Color(0xFFFF3062),
            //               ),
            //               child: const Center(
            //                 child: Icon(Icons.home, color: Colors.white),
            //               ),
            //             ),
            //           ),
            //           const CircleAvatar(
            //             radius: 81 /
            //                 2, // Set the radius to half of the BottomAppBar's height
            //             backgroundColor: Color(0xFFFF3062),
            //             child: Icon(Icons.add, color: Colors.white),
            //           ),
            //           const CircleAvatar(
            //             radius: 81 /
            //                 2, // Set the radius to half of the BottomAppBar's height
            //             backgroundColor: Color(0xFFFF3062),
            //             child: Icon(Icons.chat, color: Colors.white),
            //           ),
            //           const CircleAvatar(
            //             radius: 81 /
            //                 2, // Set the radius to half of the BottomAppBar's height
            //             backgroundColor: Color(0xFFFF3062),
            //             child: Icon(Icons.person, color: Colors.white),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // )
            // )
          ],
        ),
      ),
    );
  }
}
