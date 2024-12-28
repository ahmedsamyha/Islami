import 'package:flutter/material.dart';
import 'package:islami/utils/sura_name.dart';
import 'package:islami/widgets/sura_list_item.dart';

import '../utils/constants.dart';
import '../utils/model.dart';

class SuraListView extends StatelessWidget {
  const SuraListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => SuraListItem(
                suraModel: SuraModel.getSuraModel(index),
              ),
          separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 64, vertical: 10),
                child: Divider(
                  color: AppColors.kWhiteColor,
                  height: .5,
                ),
              ),
          itemCount: SuraModel.suraNameArList.length),
    );
  }
}