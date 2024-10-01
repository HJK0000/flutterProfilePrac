import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      color: Colors.yellow,
      child: ListView(
        children: [
          for (int i = 0; i < 100; i++) Text("하하하하하하하하하하하하하하하"),
        ],
      ),
    );
  }
}
