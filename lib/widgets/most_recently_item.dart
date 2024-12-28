import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/model.dart';

class MostRecentlyItem extends StatelessWidget {
  const MostRecentlyItem({
    super.key, required this.suraModel,

  });
  final SuraModel suraModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.kPrimaryColor,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraModel.suraNameEn,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.kBlackColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                suraModel.suraNameAr,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.kBlackColor),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                suraModel.ayaNumbers,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.kBlackColor),
              ),
            ],
          ),
          Image.asset('assets/images/home/sura.png')
        ],
      ),
    );
  }
}
