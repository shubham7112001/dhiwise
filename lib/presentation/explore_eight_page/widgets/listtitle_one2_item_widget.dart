import '../models/listtitle_one2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListtitleOne2ItemWidget extends StatelessWidget {
  ListtitleOne2ItemWidget(
    this.listtitleOne2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListtitleOne2ItemModel listtitleOne2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(120),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgThumbnailimage11,
              height: getVerticalSize(125),
              width: getHorizontalSize(120),
              radius: BorderRadius.circular(
                getHorizontalSize(2),
              ),
            ),
            Opacity(
              opacity: 0.87,
              child: Text(
                listtitleOne2ItemModelObj.titletwoTxt,
                style: theme.textTheme.bodySmall,
              ),
            ),
            Opacity(
              opacity: 0.87,
              child: Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  listtitleOne2ItemModelObj.subtitleTxt,
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
