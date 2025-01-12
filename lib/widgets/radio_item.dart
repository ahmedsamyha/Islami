import 'package:flutter/material.dart';
import 'package:islami/utils/constants.dart';

class RadioItem extends StatelessWidget {
  const RadioItem({
    super.key, required this.name,

  });

final String name;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.kPrimaryColor,
          image: const DecorationImage(image: AssetImage('assets/images/home/maskbottom.png'),alignment: Alignment.bottomCenter)
      ),
      child:  Column(
        children: [
           Text( name, style: const TextStyle(fontSize: 20 , fontWeight: FontWeight.w700),overflow: TextOverflow.ellipsis,),
          SizedBox(height: height*.02,),
          SizedBox(
            width: double.infinity,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: width*.12,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.play_arrow_rounded , color: AppColors.kBlackColor,size: 44,)),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.volume_up , color: AppColors.kBlackColor,size: 30)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}