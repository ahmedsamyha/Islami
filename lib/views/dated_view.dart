import 'package:flutter/material.dart';

class DatedView extends StatelessWidget {
  const DatedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(  decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/home/datedbg.png'),fit: BoxFit.fill)
    ),
    );
  }
}
