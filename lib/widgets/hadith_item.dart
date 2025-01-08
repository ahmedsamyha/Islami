import 'package:flutter/material.dart';
import 'package:islami/utils/hadith_model.dart';

import '../utils/constants.dart';

class HadithItem extends StatelessWidget {
  const HadithItem({
    super.key,
    required this.allAhadith, this.onTap,
  });


  final HadithModel allAhadith;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            left: width * .01,
            right: width*.01,
            child: Container(
              height: height * .65,
              width: width * .82,
              decoration: BoxDecoration(
                  color: AppColors.kPrimaryColor,
                  image: const DecorationImage(image: AssetImage('assets/images/home/hadithback.png'),opacity: .15),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/home/maskleft.png',
                            color: AppColors.kBlackColor,
                          ),
                        ),
                        Spacer(),
                        Expanded(
                          child: Image.asset(
                            'assets/images/home/maskright.png',
                            color: AppColors.kBlackColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: Image.asset(
                        'assets/images/home/maskbottom.png',
                        width: width * .8,
                      ))
                ],
              ),
            ),
          ),
          Positioned(
            top: height * .31,
            left: width * .08,
            right: width*.08,
            child: SizedBox(
                width: width * .55,
                child:  Text(
                  textAlign: TextAlign.center,
                  allAhadith.title,
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: AppColors.kBlackColor),
                )),
          ),
          Positioned(
            bottom: height * .1,
            left: width * .01,
            child: SizedBox(
              height: height * .5,
              width: width * .8,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children:  [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      textDirection: TextDirection.rtl,
                      maxLines: 12,
                      allAhadith.content.first,
                      style: const TextStyle(
                          height: 2.5,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.kBlackColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
