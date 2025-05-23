import 'package:flutter/material.dart';

class PulsatingCircleAnimation extends StatelessWidget {
  const PulsatingCircleAnimation({super.key});
  final double size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pulsating Circle Animation')),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 200),
          duration: const Duration(milliseconds: 1500),
          curve: Curves.easeInOut,
          builder: (context, animatedSize, child) {
            return Stack(
              alignment: Alignment.center,
              children: [
                _buildPulsatingCircle(
                  animatedSize,
                  Colors.blue.withOpacity(0.2),
                ),
                _buildPulsatingCircle(
                  animatedSize * 0.8,
                  Colors.blue.withOpacity(0.3),
                ),
                _buildPulsatingCircle(
                  animatedSize * 0.6,
                  Colors.blue.withOpacity(0.4),
                ),
                _buildPulsatingCircle(
                  animatedSize * 0.4,
                  Colors.blue.withOpacity(0.5),
                ),
                _buildPulsatingCircle(animatedSize * 0.2, Colors.blue),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildPulsatingCircle(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.5),
            blurRadius: size / 1.5,
            spreadRadius: size / 6,
          ),
        ],
      ),
    );
  }
}
