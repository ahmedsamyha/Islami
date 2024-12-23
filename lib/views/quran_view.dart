import 'package:flutter/material.dart';
class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/home/background.png'),fit: BoxFit.cover)
      ),
    );
  }
}
