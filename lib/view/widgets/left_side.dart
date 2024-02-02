import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmail_setting/view/widgets/tile_widget.dart';

import '../../core/constants.dart';


class LeftSection extends StatelessWidget {
  const LeftSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width * 0.185,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                  color: const Color(0xffC2E7FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.edit_outlined),
                    Text(
                      'Compose',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            TileWidget(text: 'Inbox', icon: Icons.inbox_outlined),
            TileWidget(text: 'Starred', icon: Icons.star_border),
            TileWidget(text: 'Snoozed', icon: Icons.schedule),
            TileWidget(text: 'Sent', icon: Icons.send_outlined),
            TileWidget(text: 'Drafts', icon: Icons.note_outlined),
            TileWidget(text: 'Categories', icon: Icons.label_outline),
            TileWidget(text: 'More', icon: Icons.expand_more),
            Constants.height10,
            const ListTile(
              leading: Text(
                'Labels',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              trailing: Icon(Icons.add, color: Constants.black),
            ),
            TileWidget(text: 'Contact Submitted', icon: Icons.label),
            TileWidget(text: 'Junk', icon: Icons.label),
            TileWidget(text: 'Notes', icon: Icons.label),
          ],
        ),
      ),
    );
  }
}
