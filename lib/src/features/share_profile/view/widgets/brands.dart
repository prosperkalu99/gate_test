import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/src/constants/assets_constants.dart';

import '../../../../res/app_color.dart';

class Brands extends StatefulWidget {
  const Brands({super.key});

  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  List<String> brands = [
    "🧢  vintage",
    "🔥 new",
    "🪡  y2k",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...brands.map((e){
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: AppColor.bgColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColor.primaryColor.withOpacity(0.2),
                  offset: Offset(0,5),
                  blurRadius: 4
                )
              ],
            ),
            child: Text(e),
          );
        }),
        Container(
          height: 40,
          width: 50,
          decoration: BoxDecoration(
            color: AppColor.bgColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: AppColor.primaryColor.withOpacity(0.2),
                  offset: Offset(0,5),
                  blurRadius: 4
              )
            ],
          ),
          child: Center(
            child: SvgPicture.asset(AssetConstants.add, height: 20,),
          ),
        )
      ],
    );
  }
}
