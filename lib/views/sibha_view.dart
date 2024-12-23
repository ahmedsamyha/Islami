import 'package:flutter/material.dart';

class SibhaView extends StatelessWidget {
  const SibhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/home/sibhabg.png'),fit: BoxFit.fill)
      ),

    );
  }
}
