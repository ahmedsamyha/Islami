import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/model.dart';
import '../widgets/top_header_logo.dart';

class DatedView extends StatelessWidget {
  const DatedView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List<DatedModel> prayList = [
      DatedModel(name: 'Sunrise', time: '01:04', aP: 'AM'),
      DatedModel(name: 'Dhuhr', time: '01:01', aP: 'PM'),
      DatedModel(name: 'ASR', time: '04:38', aP: 'PM'),
      DatedModel(name: 'Maghrib', time: '07:57', aP: 'PM'),
      DatedModel(name: 'Isha', time: '09:57', aP: 'PM'),
    ];
    return Container(  decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/home/datedbg.png'),fit: BoxFit.fill)
    ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * .02),
            const TopHeaderLogo(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
              color: const Color(0xFF856B3F),
                image: const DecorationImage(image: AssetImage('assets/images/parbg.png'),fit: BoxFit.fill)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('16 Jul,\n2024' , style: TextStyle(color: AppColors.kWhiteColor,fontSize: 16,fontWeight: FontWeight.w700),),
                        Text('Pray Time' , style: TextStyle(color: AppColors.kBlackColor.withOpacity(.7),fontSize: 20,fontWeight: FontWeight.w700),),
                        const Text('09 Muh,\n1446' , style: TextStyle(color: AppColors.kWhiteColor,fontSize: 16,fontWeight: FontWeight.w700),)
        
                      ],
                    ),
                  ),
                  Column(
                    children: [
                    const Text('Tuesday' , style: TextStyle(color: AppColors.kBlackColor,fontSize: 20,fontWeight: FontWeight.w700),),
        
                    SizedBox(
                      height: height*.20,
                      child: ListView.separated(
                        physics: const PageScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index)=>Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(image: AssetImage('assets/images/barygrediant.png'))
                        ),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(prayList[index].name , style: const TextStyle(color: AppColors.kWhiteColor,fontSize: 16,fontWeight: FontWeight.w700),),
                            Text(prayList[index].time, style: const TextStyle(color: AppColors.kWhiteColor,fontSize: 32,fontWeight: FontWeight.w700),),
                            Text(prayList[index].aP , style: const TextStyle(color: AppColors.kWhiteColor,fontSize: 16,fontWeight: FontWeight.w700),),

                          ],
                        ),
                      ), separatorBuilder: (context,index)=>const SizedBox(width:8), itemCount: prayList.length),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Next Pray' , style: TextStyle(color: AppColors.kBlackColor.withOpacity(.7),fontSize: 20,fontWeight: FontWeight.w700),),
                        const Text('- 02:32' , style: TextStyle(color: AppColors.kBlackColor,fontSize: 20,fontWeight: FontWeight.w700),),
                        SizedBox(width: width*.05,),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.volume_off_rounded , color: AppColors.kBlackColor,size: 30)),
        
                      ],
                    )
                  ],)
                ],
              ),
            ),
             const Padding(
               padding: EdgeInsets.all(20),
               child: Text(
                'Azkar' , style: TextStyle(color: AppColors.kWhiteColor,fontSize: 16,fontWeight: FontWeight.w700),),
             ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: height*.3,
                      width: width*.43,
                      decoration: BoxDecoration(
                        color: AppColors.kBlackColor,

                        border: Border.all(color: AppColors.kPrimaryColor,width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(child: Image.asset('assets/images/azkar11.png')),
                          const Text('Evening Azkar',style: TextStyle(color: AppColors.kWhiteColor,fontSize: 20,fontWeight: FontWeight.w700),),
                          const SizedBox(height: 16,),

                        ],
                      ),
                    ),

                    Container(
                      height: height*.3,
                      width: width*.43,
                      decoration: BoxDecoration(
                        color: AppColors.kBlackColor,

                        border: Border.all(color: AppColors.kPrimaryColor,width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(child: Image.asset('assets/images/azkar22.png')),
                          const Text('Morning Azkar',style: TextStyle(color: AppColors.kWhiteColor,fontSize: 20,fontWeight: FontWeight.w700),),
                          const SizedBox(height: 16,),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
