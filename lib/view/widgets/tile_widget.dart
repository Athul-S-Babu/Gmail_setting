import 'package:flutter/material.dart';

import '../../core/constants.dart';

class TileWidget extends StatelessWidget {
  TileWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  String text;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Icon(
        icon,
        size: 20,
        color: Constants.black,
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
