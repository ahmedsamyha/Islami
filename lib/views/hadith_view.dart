import 'package:flutter/material.dart';
import 'package:islami/utils/constants.dart';
import 'package:islami/widgets/top_header_logo.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/home/hadithbg.png'),
                        fit: BoxFit.contain)),
              ),
            ),
            SizedBox(
              height: height * .32,
            ),
          ],
        ),
        const TopHeaderLogo(),
        Positioned(
          bottom: 20,
          left: width * .09,
          child: Container(
            height: height * .65,
            width: width * .82,
            decoration: BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Column(

              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8 , vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/home/maskleft.png' , color: AppColors.kBlackColor,),
                      SizedBox(
                        width: width*.3,
                          child: Text('الحديث الأول',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: AppColors.kBlackColor),)),

                      Image.asset('assets/images/home/maskright.png',color: AppColors.kBlackColor,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    textAlign: TextAlign.center,
                    ' عن أمـيـر المؤمنـين أبي حـفص عمر بن الخطاب رضي الله عنه ، قال : سمعت رسول الله صلى الله عـليه وسلم يـقـول : ( إنـما الأعـمـال بالنيات وإنـمـا لكـل امـرئ ما نـوى . فمن كـانت هجرته إلى الله ورسولـه فهجرتـه إلى الله ورسـوله ومن كانت هجرته لـدنيا يصـيبها أو امرأة ينكحها فهجرته إلى ما هاجر إليهرواه إمام المحد ثين أبـو عـبـد الله محمد بن إسماعـيل بن ابراهـيـم بن المغـيره بن بـرد زبه البخاري الجعـفي،[رقم:1] وابـو الحسـيـن مسلم بن الحجاج بن مـسلم القـشـيري الـنيسـابـوري [رقم :1907] رضي الله عنهما في صحيحيهما اللذين هما أصح الكتب المصنفه'
                    ,style: TextStyle(height :1, fontSize: 16,fontWeight: FontWeight.w700,color: AppColors.kBlackColor),),
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

      ],
    );
  }
}
