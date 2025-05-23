// import 'package:animation/implicit_examples/animated_color_pallete.dart';
// import 'package:animation/explicit_examples/login_animation.dart';
// import 'package:animation/implicit_examples/animated_pulse_beat.dart';
// import 'package:animation/implicit_examples/animated_shopping_cart.dart';
// import 'package:animation/explicit_examples/list_animation.dart';
// import 'package:animation/explicit_examples/loading_animation.dart';
// import 'package:animation/page_route_builder/splash_animation.dart';
import 'package:animation/custom_painter_example/bouncing_ball_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const BouncingBallAnimation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
