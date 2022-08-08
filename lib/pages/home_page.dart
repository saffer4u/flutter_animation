import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation/pages/file_picker.dart';
import 'package:flutter_animation/pages/toggle_switch.dart';
import 'package:flutter_animation/razorpay/razorpay_page.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'add_listener.dart';
import 'add_status_listener.dart';
import 'animted_builder.dart';
import 'hero_animation.dart';
import 'implicit_animations.dart';
import 'simultaneous_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: 2, //optional, default as 0
        onTap: (int i) => print('click index=$i'),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Hero(
                  tag: "logo",
                  child: FlutterLogo(size: 100),
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButton(
                  title: "Payments",
                  page: RazorPayPage(),
                ),
                CustomButton(
                  title: "Hero Animation",
                  page: HeroAnimation(),
                ),
                CustomButton(
                  title: "Add Listener Page",
                  page: AddListenerPage(),
                ),
                CustomButton(
                  title: "Add Status Listener Page",
                  page: AddStatusListenerPage(),
                ),
                CustomButton(
                  title: "Animated Builder",
                  page: AnimatedBuilderPage(),
                ),
                CustomButton(
                  title: "Simultaneous Animation",
                  page: SimultaneousAnimationPage(),
                ),
                CustomButton(
                  title: "Implicit Animations",
                  page: ImplicitAnimations(),
                ),
                CustomButton(
                  title: "Toggle Switch",
                  page: ToggleSwitches(),
                ),
                CustomButton(
                  title: "File Picker",
                  page: FilePickerDemo(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.page,
  }) : super(key: key);
  final String title;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => page,
        ),
      ),
      child: Text(title),
    );
  }
}
