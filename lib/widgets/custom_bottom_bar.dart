import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavhome,
      activeIcon: ImageConstant.imgNavhome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavexplore,
      activeIcon: ImageConstant.imgNavexplore,
      title: "lbl_explore".tr,
      type: BottomBarEnum.Explore,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgTrophy,
      activeIcon: ImageConstant.imgTrophy,
      title: "lbl_channels".tr,
      type: BottomBarEnum.Channels,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavuser,
      activeIcon: ImageConstant.imgNavuser,
      title: "lbl_user".tr,
      type: BottomBarEnum.User,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(56),
      decoration: BoxDecoration(
        color: appTheme.gray90002,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].icon,
                  height: getSize(22),
                  width: getSize(22),
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                ),
                Opacity(
                  opacity: 0.87,
                  child: Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].activeIcon,
                  height: getSize(22),
                  width: getSize(22),
                  color: appTheme.deepPurpleA200,
                ),
                Opacity(
                  opacity: 0.87,
                  child: Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.bodySmallDeeppurpleA200.copyWith(
                        color: appTheme.deepPurpleA200.withOpacity(0.66),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Explore,
  Channels,
  User,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
