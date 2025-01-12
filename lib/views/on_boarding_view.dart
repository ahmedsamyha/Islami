import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/utils/chash_helper.dart';
import 'package:islami/utils/constants.dart';
import 'package:islami/views/app_main_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  Widget _buildImage(String assetName, double height ) {
    return Image.asset('assets/images/on_boarding/$assetName',height: height,fit: BoxFit.fill,);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w700,
          color: AppColors.kPrimaryColor),
      bodyTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.kPrimaryColor),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
      bodyFlex:0,
      pageColor: AppColors.kBlackColor,
      imagePadding: EdgeInsets.zero,
      imageFlex:4,
    );

    return IntroductionScreen(
      globalBackgroundColor: AppColors.kBlackColor,
      onDone: () {
        CashHelper.saveEligibility();
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const AppMainView()));
      },
      done: const Text("Finish",
          style: TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w700)),
      back: const Text(
        'Back',
        style: TextStyle(
            color: AppColors.kPrimaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w700),
      ),
      next: const Text('Next', style: TextStyle(
          color: AppColors.kPrimaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w700),),
      showBackButton: true,
      showDoneButton: true,
      dotsFlex:3,
      globalHeader: Align(
        alignment: Alignment.topCenter,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16 , bottom: 0),
            child: _buildImage('boarding_header.png',height*.18),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Welcome To Islami App",
          body: "",
          image: _buildImage('frame1.png',height*.4),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Welcome To Islami",
          body: "We Are Very Excited To Have You In Our Community",
          image: _buildImage('frame02.png',height*.4),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Reading the Quran",
          body: "Read, and your Lord is the Most Generous",
          image: _buildImage('frame03.png',height*.4),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Bearish",
          body: "Praise the name of your Lord, the Most High",
          image: _buildImage('frame04.png',height*.4),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
        PageViewModel(
          title: "Holy Quran Radio",
          body:
              "You can listen to the Holy Quran Radio through the application for free and easily",
          image: _buildImage('frame05.png',height*.4),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
      ],

      dotsDecorator: const DotsDecorator(
        activeColor: AppColors.kPrimaryColor,
        size: Size(7.0, 7.0),
        color: Color(0xFF707070),
        activeSize: Size(18.0, 7.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(7.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color:AppColors.kBlackColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
