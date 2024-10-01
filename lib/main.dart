import 'package:flutter/material.dart';
import 'package:profileapp/components/profile_buttons.dart';
import 'package:profileapp/components/profile_count_info.dart';
import 'package:profileapp/components/profile_drawer.dart';
import 'package:profileapp/components/profile_header.dart';
import 'package:profileapp/components/profile_tab.dart';
import 'package:profileapp/theme.dart';

/// Flutter code sample for [TabBar].

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      appBar: _buildProfileAppBar(),
      body: Column(
        children: [
          SizedBox(height: 20),
          ProfileHeader(),
          SizedBox(height: 20),
          ProfileCountInfo(),
          SizedBox(height: 20),
          ProfileButtons(),
          Expanded(child: ProfileTab()),
        ],
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios),
      title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold)),
      centerTitle: true,
    );
  }
}
