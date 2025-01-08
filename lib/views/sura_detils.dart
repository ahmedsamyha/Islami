import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/utils/constants.dart';

class SuraDetails extends StatefulWidget {
  const SuraDetails({
    super.key,
    required this.suraAr,
    required this.suraEn,
    required this.suraNumber,
  });
  final String suraAr;
  final String suraEn;
  final int suraNumber;

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    if (verses.isEmpty) {
      loadSuraFile(widget.suraNumber);
    }
    return Scaffold(
      backgroundColor: AppColors.kBlackColor,
      appBar: AppBar(
        backgroundColor: AppColors.kBlackColor,
        // foregroundColor: AppColors.kBlackColor,
        // shadowColor: AppColors.kBlackColor,
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
        title: Text(
          widget.suraEn,
          style: const TextStyle(
              color: AppColors.kPrimaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),
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
                    Image.asset('assets/images/home/maskleft.png'),
                    Text(
                      widget.suraAr,
                      style: const TextStyle(
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 24),
                    ),
                    Image.asset('assets/images/home/maskright.png'),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: AppColors.kBlackColor,
                                borderRadius: BorderRadius.circular(16),
                                border:
                                    Border.all(color: AppColors.kPrimaryColor)),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: RichText(
                                textAlign: TextAlign.center,

                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: ' ${verses[index]}',
                                        style: const TextStyle(
                                            color: AppColors.kPrimaryColor,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20)),
                                    TextSpan(
                                        text: '[${index+1}] ',
                                        style: const TextStyle(
                                            color: AppColors.kPrimaryColor,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 16,
                          ),
                      itemCount: verses.length),
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

  Future<void> loadSuraFile(int index) async {
    String suraFile =
        await rootBundle.loadString('assets/files/suras/$index.txt');
    List<String> lines = suraFile.split('\n');
    verses = lines;
    setState(() {});
  }
}
