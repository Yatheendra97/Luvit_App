import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chipviewclose_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ChipviewcloseItemWidget extends StatelessWidget {
  ChipviewcloseItemWidget(this.chipviewcloseItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ChipviewcloseItemModel chipviewcloseItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 9.v,
          right: 14.h,
          bottom: 9.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewcloseItemModelObj.close!.value,
          style: TextStyle(
            color: appTheme.gray100,
            fontSize: 14.fSize,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w400,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgCloseGray600,
          height: 18.v,
          width: 15.h,
          margin: EdgeInsets.only(right: 4.h),
        ),
        selected: (chipviewcloseItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray90002,
        selectedColor: appTheme.gray90002,
        shape: (chipviewcloseItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray90002.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  18.h,
                ))
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray80001,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  18.h,
                ),
              ),
        onSelected: (value) {
          chipviewcloseItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
