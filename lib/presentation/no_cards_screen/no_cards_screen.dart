import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../main_profile_one_page/main_profile_one_page.dart';
import 'controller/no_cards_controller.dart'; // ignore_for_file: must_be_immutable

class NoCardsScreen extends GetWidget<NoCardsController> {
  const NoCardsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 43.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "msg3".tr,
                style: CustomTextStyles.headlineSmallBold,
              ),
              SizedBox(height: 15.v),
              Text(
                "msg4".tr,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 1.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 36.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBtcon28,
        margin: EdgeInsets.only(
          left: 8.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "lbl".tr,
              style: CustomTextStyles.titleSmallBold,
            ),
            TextSpan(
              text: "lbl2".tr,
              style: CustomTextStyles.bodyMediumGray50,
            ),
            TextSpan(
              text: "lbl3".tr,
              style: CustomTextStyles.bodyMediumGray50,
            ),
            TextSpan(
              text: "lbl4".tr,
              style: CustomTextStyles.bodyMediumGray50,
            ),
            TextSpan(
              text: "lbl5".tr,
              style: CustomTextStyles.titleSmallBold,
            )
          ],
        ),
        textAlign: TextAlign.left,
      ),
      actions: [
        Container(
          margin: EdgeInsets.fromLTRB(4.h, 10.v, 5.h, 5.v),
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 5.v,
          ),
          decoration: AppDecoration.outlineGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppbarImage(
                imagePath: ImageConstant.imgStar113,
              ),
              AppbarTitle(
                text: "lbl_323_233".tr,
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 2.v,
                  right: 4.h,
                ),
              )
            ],
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBtcon40,
          margin: EdgeInsets.only(
            top: 5.v,
            right: 9.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.tf:
        return AppRoutes.mainProfileOnePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainProfileOnePage:
        return MainProfileOnePage();
      default:
        return DefaultWidget();
    }
  }
}
