import '../models/listturner_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListturnerItemWidget extends StatelessWidget {
  ListturnerItemWidget(
    this.listturnerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListturnerItemModel listturnerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(120),
      child: Padding(
        padding: getPadding(
          bottom: 1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgThumbnailimage1,
              height: getVerticalSize(125),
              width: getHorizontalSize(120),
              radius: BorderRadius.circular(
                getHorizontalSize(2),
              ),
            ),
            Opacity(
              opacity: 0.87,
              child: Text(
                listturnerItemModelObj.titleTxt,
                style: theme.textTheme.bodySmall,
              ),
            ),
            Opacity(
              opacity: 0.87,
              child: Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Text(
                  "lbl_sub_title".tr,
                  style: CustomTextStyles.bodySmallOnPrimary_3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
