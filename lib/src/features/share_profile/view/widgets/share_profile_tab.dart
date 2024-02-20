import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/src/constants/app_sizes.dart';
import 'package:test_app/src/constants/assets_constants.dart';
import 'package:test_app/src/res/app_color.dart';
import 'package:collection/collection.dart';

class ShareProfileTab extends StatefulWidget {
  final int selectedIndex;
  final ValueSetter<int> onTap;
  const ShareProfileTab({super.key, this.selectedIndex = 0, required this.onTap});

  @override
  State<ShareProfileTab> createState() => _ShareProfileTabState();
}

class _ShareProfileTabState extends State<ShareProfileTab> {
  List<String> tabs = [
    "Profile",
    "Admirations",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...tabs.mapIndexed((index, e){
          return GestureDetector(
            onTap: ()=> widget.onTap(index),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: 40,
              margin: index == 0 ? const EdgeInsets.only(right: 10) : null,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: AppColor.bgColor,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(6.89),
                    bottomLeft: Radius.circular(6.89),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.primaryColor.withOpacity(widget.selectedIndex == index? 1 : 0),
                      offset: const Offset(0,2.5),
                    )
                  ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(index == 0? AssetConstants.user : AssetConstants.fav,
                      color: AppColor.primaryColor.withOpacity(widget.selectedIndex == index? 1 : 0.5)),
                  gapW8,
                  Text(e, style: Theme.of(context).textTheme.bodyMedium
                      ?.copyWith(color: AppColor.primaryColor.withOpacity(widget.selectedIndex == index? 1 : 0.5),
                  )),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}
