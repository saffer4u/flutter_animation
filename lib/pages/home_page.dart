import 'package:flutter/material.dart';

import 'package:flutter_animation/pages/add_listener.dart';
import 'package:flutter_animation/pages/add_status_listener.dart';
import 'package:flutter_animation/pages/animted_builder.dart';
import 'package:flutter_animation/pages/hero_animation.dart';
import 'package:flutter_animation/pages/implicit_animations.dart';
import 'package:flutter_animation/pages/simultaneous_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Hero(
                tag: "logo",
                child: FlutterLogo(size: 100),
              ),
              SizedBox(
                height: 40,
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
            ],
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
