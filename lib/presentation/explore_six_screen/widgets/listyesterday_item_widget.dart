import '../models/listyesterday_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListyesterdayItemWidget extends StatelessWidget {
  ListyesterdayItemWidget(
    this.listyesterdayItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListyesterdayItemModel listyesterdayItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnailimage27,
            height: getVerticalSize(125),
            width: getHorizontalSize(120),
            radius: BorderRadius.circular(
              getHorizontalSize(2),
            ),
          ),
          Opacity(
            opacity: 0.87,
            child: Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Text(
                listyesterdayItemModelObj.titleTxt,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          Opacity(
            opacity: 0.87,
            child: Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Text(
                listyesterdayItemModelObj.subtitleTxt,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallOnPrimary_3.copyWith(
                  height: 1.33,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
