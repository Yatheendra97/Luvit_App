import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/main_profile_one_controller.dart';
import 'models/main_profile_one_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MainProfileOnePage extends StatelessWidget {
  MainProfileOnePage({Key? key})
      : super(
          key: key,
        );

  MainProfileOneController controller =
      Get.put(MainProfileOneController(MainProfileOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 14.v),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 600.v,
                        width: 340.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle1,
                              height: 600.v,
                              width: 340.h,
                              radius: BorderRadius.circular(
                                20.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 19.h,
                                  vertical: 15.v,
                                ),
                                decoration:
                                    AppDecoration.gradientBlackToBlack.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 3.v,
                                      width: 56.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          1.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.14, 0.07),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            appTheme.pinkA40001,
                                            appTheme.pinkA200
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 3.v,
                                      width: 56.h,
                                      margin: EdgeInsets.only(left: 60.h),
                                      decoration: BoxDecoration(
                                        color: appTheme.gray900,
                                        borderRadius: BorderRadius.circular(
                                          1.h,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 3.v,
                                        width: 56.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.gray900,
                                          borderRadius: BorderRadius.circular(
                                            1.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 3.v,
                                        width: 56.h,
                                        margin: EdgeInsets.only(right: 60.h),
                                        decoration: BoxDecoration(
                                          color: appTheme.gray900,
                                          borderRadius: BorderRadius.circular(
                                            1.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 3.v,
                                        width: 56.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.gray900,
                                          borderRadius: BorderRadius.circular(
                                            1.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              _buildRow29930One(
                                                statsText: "lbl_29_930".tr,
                                              ),
                                              SizedBox(height: 4.v),
                                              Row(
                                                children: [
                                                  Container(
                                                    decoration: AppDecoration
                                                        .outlineBlack,
                                                    child: Text(
                                                      "lbl6".tr,
                                                      style: theme.textTheme
                                                          .headlineMedium,
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: 4.h,
                                                      top: 5.v,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlineBlack,
                                                    child: Text(
                                                      "lbl_27".tr,
                                                      style: theme.textTheme
                                                          .headlineSmall,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              _buildRowOne(
                                                cityName: "lbl7".tr,
                                                one: "lbl8".tr,
                                                distance: "lbl_2km".tr,
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 43.v),
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 43.v),
                                              child: OutlineGradientButton(
                                                padding: EdgeInsets.only(
                                                  left: 1.h,
                                                  top: 1.v,
                                                  right: 1.h,
                                                  bottom: 1.v,
                                                ),
                                                strokeWidth: 1.h,
                                                gradient: LinearGradient(
                                                  begin: Alignment(0.14, 0.07),
                                                  end: Alignment(0.86, 0.83),
                                                  colors: [
                                                    appTheme.tealA20001,
                                                    appTheme.deepPurpleA700
                                                  ],
                                                ),
                                                corners: Corners(
                                                  topLeft: Radius.circular(24),
                                                  topRight: Radius.circular(24),
                                                  bottomLeft:
                                                      Radius.circular(24),
                                                  bottomRight:
                                                      Radius.circular(24),
                                                ),
                                                child: CustomIconButton(
                                                  height: 48.adaptSize,
                                                  width: 48.adaptSize,
                                                  padding: EdgeInsets.all(12.h),
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgFrame49,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgArrowDown,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                    SizedBox(height: 4.v)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 600.v,
                        width: 340.h,
                        margin: EdgeInsets.only(left: 10.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: 50.h,
                                  bottom: 61.v,
                                ),
                                child: Text(
                                  "lbl_29_9302".tr,
                                  style: CustomTextStyles.bodyMediumBlack90002,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 600.v,
                                width: 340.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgRectangle2089,
                                      height: 600.v,
                                      width: 340.h,
                                      radius: BorderRadius.circular(
                                        20.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 19.h,
                                          vertical: 15.v,
                                        ),
                                        decoration: AppDecoration
                                            .gradientBlackToBlack
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder20,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 3.v,
                                              width: 56.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  1.h,
                                                ),
                                                gradient: LinearGradient(
                                                  begin: Alignment(0.14, 0.07),
                                                  end: Alignment(0.5, 1),
                                                  colors: [
                                                    appTheme.pinkA40001,
                                                    appTheme.pinkA200
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 3.v,
                                              width: 56.h,
                                              margin:
                                                  EdgeInsets.only(left: 60.h),
                                              decoration: BoxDecoration(
                                                color: appTheme.gray900,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  1.h,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: 3.v,
                                                width: 56.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray900,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    1.h,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                height: 3.v,
                                                width: 56.h,
                                                margin: EdgeInsets.only(
                                                    right: 60.h),
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray900,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    1.h,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                height: 3.v,
                                                width: 56.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray900,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    1.h,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 4.h),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      _buildRow29930One(
                                                        statsText:
                                                            "lbl_29_930".tr,
                                                      ),
                                                      SizedBox(height: 4.v),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineBlack,
                                                            child: Text(
                                                              "lbl9".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineMedium,
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                              left: 4.h,
                                                              top: 5.v,
                                                            ),
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineBlack,
                                                            child: Text(
                                                              "lbl_25".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineSmall,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      _buildRowOne(
                                                        cityName: "lbl7".tr,
                                                        one: "lbl8".tr,
                                                        distance: "lbl_2km".tr,
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 43.v),
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 43.v),
                                                      child:
                                                          OutlineGradientButton(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 1.h,
                                                          top: 1.v,
                                                          right: 1.h,
                                                          bottom: 1.v,
                                                        ),
                                                        strokeWidth: 1.h,
                                                        gradient:
                                                            LinearGradient(
                                                          begin: Alignment(
                                                              0.12, 0.03),
                                                          end: Alignment(
                                                              0.86, 1.12),
                                                          colors: [
                                                            appTheme.tealA200,
                                                            appTheme
                                                                .deepPurpleA700
                                                          ],
                                                        ),
                                                        corners: Corners(
                                                          topLeft:
                                                              Radius.circular(
                                                                  24),
                                                          topRight:
                                                              Radius.circular(
                                                                  24),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  24),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  24),
                                                        ),
                                                        child: CustomIconButton(
                                                          height: 48.adaptSize,
                                                          width: 48.adaptSize,
                                                          padding:
                                                              EdgeInsets.all(
                                                                  12.h),
                                                          decoration:
                                                              IconButtonStyleHelper
                                                                  .outlineTL24,
                                                          child:
                                                              CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgFrame49,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 20.v),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgArrowDown,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              alignment: Alignment.center,
                                            ),
                                            SizedBox(height: 4.v)
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 600.v,
                width: 340.h,
                margin: EdgeInsets.only(bottom: 14.v),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle1600x340,
                      height: 600.v,
                      width: 340.h,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 19.h,
                          vertical: 15.v,
                        ),
                        decoration: AppDecoration.gradientBlackToBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 3.v,
                              width: 56.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  1.h,
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment(0.14, 0.07),
                                  end: Alignment(0.5, 1),
                                  colors: [
                                    appTheme.pinkA40001,
                                    appTheme.pinkA200
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 3.v,
                              width: 56.h,
                              margin: EdgeInsets.only(left: 60.h),
                              decoration: BoxDecoration(
                                color: appTheme.gray900,
                                borderRadius: BorderRadius.circular(
                                  1.h,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 3.v,
                                width: 56.h,
                                decoration: BoxDecoration(
                                  color: appTheme.gray900,
                                  borderRadius: BorderRadius.circular(
                                    1.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 3.v,
                                width: 56.h,
                                margin: EdgeInsets.only(right: 60.h),
                                decoration: BoxDecoration(
                                  color: appTheme.gray900,
                                  borderRadius: BorderRadius.circular(
                                    1.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 3.v,
                                width: 56.h,
                                decoration: BoxDecoration(
                                  color: appTheme.gray900,
                                  borderRadius: BorderRadius.circular(
                                    1.h,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildRow29930One(
                                        statsText: "lbl_29_930".tr,
                                      ),
                                      SizedBox(height: 4.v),
                                      Row(
                                        children: [
                                          Container(
                                            decoration:
                                                AppDecoration.outlineBlack,
                                            child: Text(
                                              "lbl10".tr,
                                              style: theme
                                                  .textTheme.headlineMedium,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 5.v,
                                            ),
                                            decoration:
                                                AppDecoration.outlineBlack,
                                            child: Text(
                                              "lbl_22".tr,
                                              style:
                                                  theme.textTheme.headlineSmall,
                                            ),
                                          )
                                        ],
                                      ),
                                      _buildRowOne(
                                        cityName: "lbl7".tr,
                                        one: "lbl8".tr,
                                        distance: "lbl_2km".tr,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 43.v),
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 43.v),
                                      child: OutlineGradientButton(
                                        padding: EdgeInsets.only(
                                          left: 1.h,
                                          top: 1.v,
                                          right: 1.h,
                                          bottom: 1.v,
                                        ),
                                        strokeWidth: 1.h,
                                        gradient: LinearGradient(
                                          begin: Alignment(0.14, 0.07),
                                          end: Alignment(0.86, 0.83),
                                          colors: [
                                            appTheme.tealA20001,
                                            appTheme.deepPurpleA700
                                          ],
                                        ),
                                        corners: Corners(
                                          topLeft: Radius.circular(24),
                                          topRight: Radius.circular(24),
                                          bottomLeft: Radius.circular(24),
                                          bottomRight: Radius.circular(24),
                                        ),
                                        child: CustomIconButton(
                                          height: 48.adaptSize,
                                          width: 48.adaptSize,
                                          padding: EdgeInsets.all(12.h),
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgFrame49,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowDown,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              alignment: Alignment.center,
                            ),
                            SizedBox(height: 4.v)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
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
                imagePath: ImageConstant.imgStar1,
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

  /// Common widget
  Widget _buildRow29930One({required String statsText}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStar11,
            height: 20.adaptSize,
            width: 20.adaptSize,
            radius: BorderRadius.circular(
              1.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              top: 2.v,
              right: 4.h,
            ),
            child: Text(
              statsText,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.gray50,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowOne({
    required String cityName,
    required String one,
    required String distance,
  }) {
    return Row(
      children: [
        Container(
          decoration: AppDecoration.outlineBlack,
          child: Text(
            cityName,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray100,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 4.h),
          decoration: AppDecoration.outlineBlack,
          child: Text(
            one,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray100,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 4.h),
          decoration: AppDecoration.outlineBlack,
          child: Text(
            distance,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray100,
            ),
          ),
        )
      ],
    );
  }
}
