import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../core/app_export.dart';

enum BottomBarEnum { tf }
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({Key? key, this.onChanged})
      : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNav,
      activeIcon: ImageConstant.imgNav,
      title: "lbl11".tr,
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavGray80001,
      activeIcon: ImageConstant.imgNavGray80001,
      title: "lbl5".tr,
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgStar127x27,
      activeIcon: ImageConstant.imgStar127x27,
      title: "lbl11".tr,
      type: BottomBarEnum.tf,
      isCircle: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavGray8000128x28,
      activeIcon: ImageConstant.imgNavGray8000128x28,
      title: "lbl12".tr,
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNav28x28,
      activeIcon: ImageConstant.imgNav28x28,
      title: "lbl13".tr,
      type: BottomBarEnum.tf,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94.v,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup132,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            if (bottomMenuList[index].isCircle) {
              return BottomNavigationBarItem(
                icon: Container(
                  decoration: AppDecoration.gradientBlackToBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder25,
                  ),
                  child: CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 27.adaptSize,
                    width: 27.adaptSize,
                    color: appTheme.gray80001,
                    radius: BorderRadius.circular(
                      2.h,
                    ),
                    margin: EdgeInsets.symmetric(vertical: 11.v),
                  ),
                ),
                label: '',
              );
            }
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    color: appTheme.gray80001,
                  ),
                  Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.gray80001,
                    ),
                  )
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    color: appTheme.pinkA400,
                  ),
                  Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.bodySmallPinkA400.copyWith(
                      color: appTheme.pinkA400,
                    ),
                  )
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      required this.activeIcon,
      this.title,
      required this.type,
      this.isCircle = false});

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isCircle;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
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
            )
          ],
        ),
      ),
    );
  }
}
