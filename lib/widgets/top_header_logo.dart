import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopHeaderLogo extends StatelessWidget {
  const TopHeaderLogo({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50,right: 50,top: 15,),
          child: Image.asset('assets/images/home/logo_back2.png',width: width,),
        ),
        Positioned(
            left: width*.12,
            top: height*.03,
            child: SizedBox(
                height: height*.18,
                width: width*.75,
                child: SvgPicture.asset('assets/images/home/Logo.svg',fit: BoxFit.cover,))),
      ],
    );
  }
}