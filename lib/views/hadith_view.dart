import 'package:flutter/material.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Expanded(
          child: Container(
                      decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/home/hadithbg.png'),fit: BoxFit.contain)
            ),
          ),
        ),
        SizedBox(
          height: height*.32,
        ),
      ],
    );
  }
}
