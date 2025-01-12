import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/utils/constants.dart';

import '../widgets/top_header_logo.dart';

class SibhaView extends StatefulWidget {
  const SibhaView({super.key});

  @override
  State<SibhaView> createState() => _SibhaViewState();
}

class _SibhaViewState extends State<SibhaView> {
  double turns = 0.0;
  int num = 1;
  String word = 'سبحان الله';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/home/sibhabg.png'),
              fit: BoxFit.fill)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height*.02,),
            const TopHeaderLogo(),
            const Text(
              textAlign: TextAlign.center,
              'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
              style: TextStyle(
                  color: AppColors.kWhiteColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 36),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  turns += 1 / 33;
                  num++;
                  if (num > 33) {
                    num = 1;
                    if (word == 'سبحان الله') {
                      word = 'الحمد لله';
                    } else if (word == 'الحمد لله') {
                      word = 'الله اكبر';
                    } else if (word == 'الله اكبر') {
                      word = 'سبحان الله';
                    }
                  }
                });
              },
              child: Stack(
                children: [
                  Positioned(
                    top: height * .028,
                    left: width * .45,
                    child: Image.asset('assets/images/mask.png'),
                  ),
                  AnimatedRotation(
                    turns: turns,
                    duration: const Duration(milliseconds: 200),
                    child: SvgPicture.asset('assets/images/sebhabody.svg'),
                  ),
                  Positioned(
                    top: height * .26,
                    left: width * .2,
                    right: width * .2,
                    child: Text(
                      textAlign: TextAlign.center,
                      word,
                      style:  TextStyle(
                          color: AppColors.kWhiteColor,
                          fontWeight: FontWeight.w700,
                          fontSize:height*.06 ),
                    ),
                  ),
                  Positioned(
                    top: height * .36,
                    left: width * .45,
                    child: Text(
                      textAlign: TextAlign.center,
                      num.toString(),
                      style:  TextStyle(
                          color: AppColors.kWhiteColor,
                          fontWeight: FontWeight.w700,
                          fontSize: height*.06 ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
