import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0XFFF6F8FC), // Set background to transparent
      iconTheme: const IconThemeData(
          color: Color(0xff71767C)), // Set icon color to black
      leading: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      title: Row(
        children: [
          const Image(
            image: AssetImage(
              'assets/logo.png',
            ),
            fit: BoxFit.cover,
            height: 25,
          ),
          SizedBox(width: Get.width * 0.07),
          Container(
            height: 40,
            width: Get.size.width * 0.5,
            decoration: BoxDecoration(
              color: const Color(0xffEAF1FB),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    // Implement your help icon action
                  },
                ),
                const SizedBox(width: 8),
                const Text(
                  'Search mail',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                  overflow: TextOverflow.fade,
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(
                    Icons.tune,
                    color: Constants.black,
                  ),
                  onPressed: () {
                    // Implement your help icon action
                  },
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.help_outline),
          onPressed: () {
            // Implement your help icon action
          },
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            // Implement your settings icon action
          },
        ),
        IconButton(
          icon: const Icon(Icons.apps),
          onPressed: () {
            // Implement your notifications icon action
          },
        ),
        const CircleAvatar(
          radius: 15,
          child: Icon(Icons.person_outline),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
