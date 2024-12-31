import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants.dart';
import '../utils/model.dart';

class SuraListItem extends StatelessWidget {
  const SuraListItem({
    super.key, required this.suraModel,required this.onTap,

  });
  final SuraModel suraModel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Stack(
              children: [
                Positioned(
                    left: suraModel.suraNumber < 10 ? 20 : 13,
                    top: suraModel.suraNumber < 100 ? 12 : 16,
                    child: Text(
                      suraModel.suraNumber.toString(),
                      style: TextStyle(
                          fontSize: suraModel.suraNumber < 100 ? 20 : 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.kWhiteColor),
                    )),
                SvgPicture.asset('assets/images/home/star.svg'),
              ],
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  suraModel.suraNameEn,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.kWhiteColor),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  suraModel.ayaNumbers,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: AppColors.kWhiteColor),
                ),
              ],
            ),
            const Spacer(),
            Text(
              suraModel.suraNameAr,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.kWhiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
