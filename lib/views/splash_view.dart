import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/views/on_boarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const OnBoardingView()));
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/splash/splashback2.png'),fit: BoxFit.cover)
      ),
      child: SafeArea(
        child: Scaffold(
                backgroundColor: Colors.transparent,
          body: Stack(
            children: [


              Positioned(top: 0,right:width*.01,
                  child: SizedBox(height: height*.35,

                      child: Image.asset('assets/images/splash/light.png'))),
              Positioned(top: height*.04,left:width*.08,
                  child: SizedBox(height: height*.22,
                      width: width*.8,
                      child: Image.asset('assets/images/splash/top2.png'))),
              Positioned(top: height*.32,left:width*.25,
                  child: SvgPicture.asset('assets/images/splash/cente2.svg')),
              Positioned(top: height*.5,left:width*.3,
                  child: SvgPicture.asset('assets/images/splash/islami.svg')),
              Positioned(top: height*.22,left:0,
                  child: SizedBox(height: height*.2,width: width*.22,
                      child: Image.asset('assets/images/splash/right.png',fit: BoxFit.cover,))),
              Positioned(bottom: height*.1,right:0,
                  child: SizedBox(height: height*.28,width: height*.12,
                      child: Image.asset('assets/images/splash/left.png',fit: BoxFit.cover,))),
              Positioned(bottom:-50,left: width*.25,
                  child: SizedBox(height: height*.3,width: width*.5,
                      child: Image.asset('assets/images/splash/route.png',fit: BoxFit.contain,))),
            ],
          ),
        ),
      ),
    );
  }
}
