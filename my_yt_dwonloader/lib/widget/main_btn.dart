// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// import 'custom_button.dart';
//
// class MainButtonWidget extends StatelessWidget {
//   const MainButtonWidget({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const <Widget>[
//             Text("Trim Merge Ringtone",
//                 style: TextStyle(
//                     fontSize: 12.0,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: "Arial")),
//           ],
//         ),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               customButton(
//                   "Video Download",
//                   FontAwesomeIcons.video,
//                   const Color.fromARGB(255, 21, 0, 105),
//                   const Color.fromARGB(255, 146, 13, 255),
//                   context,
//                   1),
//               customButton(
//                   "Playlist Download",
//                   FontAwesomeIcons.music,
//                   const Color.fromARGB(255, 37, 193, 255),
//                   const Color.fromARGB(255, 47, 0, 237),
//                   context,
//                   2),
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               customButton(
//                   "Download List",
//                   FontAwesomeIcons.download,
//                   const Color.fromARGB(255, 255, 32, 151),
//                   const Color.fromARGB(255, 255, 169, 71),
//                   context,
//                   3),
//               customButton(
//                   "Share",
//                   FontAwesomeIcons.share,
//                   const Color.fromARGB(255, 0, 255, 136),
//                   const Color.fromARGB(255, 0, 137, 161),
//                   context,
//                   4),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }



























































import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import '../provider/controller_bottom_navigation_bar.dart';

import 'custom_button.dart';

class MainButtonWidget extends StatelessWidget {
  MainButtonWidget({super.key});

  final List<IconData> iconList = [Icons.home, Icons.account_circle_outlined];

  @override
  Widget build(BuildContext context) {
    // Get the instance of BottomNavigationController
    final BottomNavigationController bottomNavController = Get.find<BottomNavigationController>();

    return Scaffold(
      body: Obx(() {
        // Update the body based on selected index
        switch (bottomNavController.selectedIndex.value) {
          case 0:
            return buildMainButtonLayout(context); // The main button layout
          case 1:
            return SettingsPage(); // Another page (you can define this elsewhere)
          default:
            return buildMainButtonLayout(context);
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for Floating Button
        },
        backgroundColor: Colors.red, // You can change the color here
        child: const Icon(Icons.home, color: Colors.black),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // FAB in the middle
      bottomNavigationBar: Obx(() => Container(
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // Changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: AnimatedBottomNavigationBar(
            icons: iconList,
            activeIndex: bottomNavController.selectedIndex.value,
            gapLocation: GapLocation.center, // Set the FAB gap location in the center
            notchSmoothness: NotchSmoothness.smoothEdge,
            onTap: (index) => bottomNavController.changeTabIndex(index),
            backgroundColor: Colors.black,
            activeColor: Colors.red,
            inactiveColor: Colors.grey,
            iconSize: 30,
            elevation: 10,
          ),
        ),
      )),
    );
  }

  // The layout for your buttons and custom layout.
  Widget buildMainButtonLayout(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Trim Merge Ringtone",
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Arial")),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              customButton(
                "Video Download",
                FontAwesomeIcons.video,
                const Color.fromARGB(255, 21, 0, 105),
                const Color.fromARGB(255, 146, 13, 255),
                context,
                1,
              ),
              customButton(
                "Playlist Download",
                FontAwesomeIcons.music,
                const Color.fromARGB(255, 37, 193, 255),
                const Color.fromARGB(255, 47, 0, 237),
                context,
                2,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              customButton(
                "Download List",
                FontAwesomeIcons.download,
                const Color.fromARGB(255, 255, 32, 151),
                const Color.fromARGB(255, 255, 169, 71),
                context,
                3,
              ),
              customButton(
                "Share",
                FontAwesomeIcons.share,
                const Color.fromARGB(255, 0, 255, 136),
                const Color.fromARGB(255, 0, 137, 161),
                context,
                4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// You need to define the SettingsPage widget
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Settings Page"),
    );
  }
}


