import '../models/listtitle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListtitleItemWidget extends StatelessWidget {
  ListtitleItemWidget(
    this.listtitleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListtitleItemModel listtitleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(90),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCardbox,
            height: getVerticalSize(143),
            width: getHorizontalSize(90),
            radius: BorderRadius.circular(
              getHorizontalSize(2),
            ),
          ),
          Opacity(
            opacity: 0.87,
            child: Padding(
              padding: getPadding(
                top: 10,
              ),
              child: Text(
                listtitleItemModelObj.titleTxt,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmall_1.copyWith(
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
