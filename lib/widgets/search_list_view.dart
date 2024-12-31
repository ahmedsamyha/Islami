import 'package:flutter/material.dart';
import 'package:islami/widgets/sura_list_item.dart';

import '../utils/constants.dart';
import '../utils/model.dart';
import '../views/sura_detils.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => SuraListItem(
              suraModel: SuraModel.getSelectedSuraModel(index),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SuraDetails(suraAr: SuraModel.getSuraModel(index).suraNameAr,suraEn: SuraModel.getSuraModel(index).suraNameEn,suraNumber: SuraModel.getSuraModel(index).suraNumber,)));
              },
            ),
            separatorBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 64, vertical: 10),
              child: Divider(
                color: AppColors.kWhiteColor,
                height: .5,
              ),
            ),
            itemCount: SuraModel.searchList.length),
      ),
    );
  }
}