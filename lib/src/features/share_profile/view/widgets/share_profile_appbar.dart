import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/src/constants/assets_constants.dart';
import 'package:test_app/src/features/share_profile/view/widgets/share_profile_tab.dart';

class ShareProfileAppBar extends StatefulWidget {
  const ShareProfileAppBar({super.key});

  @override
  State<ShareProfileAppBar> createState() => _ShareProfileAppBarState();
}

class _ShareProfileAppBarState extends State<ShareProfileAppBar> {
  int selectedIndex = 0;

  void updateState(){
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20,5,20,5),
      child: Row(
        children: [
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset(AssetConstants.night),
          ),
          Flexible(
            child: ShareProfileTab(
              selectedIndex: selectedIndex,
              onTap: (index){
                selectedIndex = index;
                updateState();
              },
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset(AssetConstants.settings),
          ),
        ],
      ),
    );
  }
}
