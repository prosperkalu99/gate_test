import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/src/constants/app_sizes.dart';
import 'package:test_app/src/constants/assets_constants.dart';
import 'package:test_app/src/features/share_profile/view/widgets/brands.dart';
import 'package:test_app/src/features/share_profile/view/widgets/links.dart';
import 'package:test_app/src/features/share_profile/view/widgets/share_profile_appbar.dart';

import '../../../res/app_color.dart';

class ShareProfileScreen extends StatelessWidget {
  const ShareProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          const ShareProfileAppBar(),
          Expanded(
            flex: 9,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          image: DecorationImage(
                            image: AssetImage(AssetConstants.banner),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: double.maxFinite,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 50,
                          width: double.maxFinite,
                          color: AppColor.bgColor,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColor.bgColor,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                AssetConstants.pic,
                              )
                            )
                          ),
                          height: 137,
                          width: 137,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text("@James88", style: Theme.of(context).textTheme.bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),),
              gapH8,
              Text("Sneaker addicted. Favourite brand @afew 👟🔥",
                style: Theme.of(context).textTheme.bodyMedium
                  ?.copyWith(fontSize: 16,color: AppColor.primaryColor.withOpacity(0.5)),
              ),
              gapH16,
              const Brands(),
              gapH16,
            ],
          ),
          const Links(),
          gapH20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton.icon(
              icon: SvgPicture.asset(AssetConstants.exit, height: 25,),
              label: const Text("SHARE PROFILE"),
              onPressed: (){},
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
