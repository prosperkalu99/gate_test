import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/src/constants/assets_constants.dart';

import '../../../../res/app_color.dart';

class Links extends StatefulWidget {
  const Links({super.key});

  @override
  State<Links> createState() => _LinksState();
}

class _LinksState extends State<Links> {
  List<String> links = [
    AssetConstants.instagram,
    AssetConstants.x,
    AssetConstants.spotify,
    AssetConstants.pinInterest,
    AssetConstants.tiktok,
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...links.map((e){
            return Container(
              height: 75,
              width: 75,
              margin: EdgeInsets.only(right: 10, bottom: 10),
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: AppColor.primaryColor.withOpacity(0.5),
                      offset: Offset(0,5),
                      blurRadius: 4
                  )
                ],
              ),
              child: Center(child: SvgPicture.asset(e, height: 35,)),
            );
          }),
          Container(
            height: 75,
            width: 75,
            margin: EdgeInsets.only(right: 10, bottom: 10),
            decoration: BoxDecoration(
              color: AppColor.bgColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: AppColor.primaryColor.withOpacity(0.5),
                    offset: Offset(0,5),
                    blurRadius: 4
                )
              ],
            ),
            child: Center(child: SvgPicture.asset(AssetConstants.add, height: 35,)),
          )
        ],
      ),
    );
  }
}
