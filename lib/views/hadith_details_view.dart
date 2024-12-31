import 'package:flutter/material.dart';
import 'package:islami/utils/constants.dart';

class HadithDetailsView extends StatelessWidget {
  const HadithDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.kBlackColor,
      appBar: AppBar(
        backgroundColor: AppColors.kBlackColor,
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back,color: AppColors.kPrimaryColor,)),
        title: const Text('suraEn' , style: TextStyle(color: AppColors.kPrimaryColor , fontWeight: FontWeight.w700,fontSize: 20),),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18 , vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/home/maskleft.png'),
                    const Text('suraAr' , style: TextStyle(color: AppColors.kPrimaryColor , fontWeight: FontWeight.w700,fontSize: 24),),
                    Image.asset('assets/images/home/maskright.png'),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  '[1] بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ [2] الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ [3] الرَّحْمَنِ الرَّحِيمِ [4] مَالِكِ يَوْمِ الدِّينِ [5] إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ [6] اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ [7] صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: AppColors.kPrimaryColor,height: 2),),
              )
            ],
          ),
          Positioned(
              bottom: 0,
              child: Image.asset('assets/images/home/maskbottom.png' , height: height*.1,width: width,fit: BoxFit.fill,color: AppColors.kPrimaryColor.withOpacity(.5),))
        ],
      ),
    );
  }
}
