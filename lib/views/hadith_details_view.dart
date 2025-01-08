import 'package:flutter/material.dart';
import 'package:islami/utils/constants.dart';

class HadithDetailsView extends StatelessWidget {
  const HadithDetailsView(
      {super.key, required this.title, required this.content});
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.kBlackColor,
      appBar: AppBar(
        backgroundColor: AppColors.kBlackColor,
        surfaceTintColor: AppColors.kBlackColor,

        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.kPrimaryColor,
            )),
       /* title: const Text(
          'suraEn',
          style: TextStyle(
              color: AppColors.kPrimaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),*/
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Image.asset('assets/images/home/maskleft.png')),
                    Text(
                      title,
                      style: const TextStyle(
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 24),
                    ),
                    Expanded(child: Image.asset('assets/images/home/maskright.png')),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        content,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.kPrimaryColor,
                            height: 2),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
              bottom: 0,
              child: Image.asset(
                'assets/images/home/maskbottom.png',
                height: height * .1,
                width: width,
                fit: BoxFit.fill,
                color: AppColors.kPrimaryColor.withOpacity(.5),
              ))
        ],
      ),
    );
  }
}
