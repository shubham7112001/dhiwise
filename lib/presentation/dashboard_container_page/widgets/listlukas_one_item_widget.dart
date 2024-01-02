import '../models/listlukas_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class ListlukasOneItemWidget extends StatelessWidget {
  ListlukasOneItemWidget(
    this.listlukasOneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListlukasOneItemModel listlukasOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(90),
      child: Padding(
        padding: getPadding(
          bottom: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgThumbnailimage10,
              height: getVerticalSize(143),
              width: getHorizontalSize(90),
              radius: BorderRadius.circular(
                getHorizontalSize(2),
              ),
            ),
            CustomRatingBar(
              margin: getMargin(
                left: 2,
                top: 2,
              ),
              ignoreGestures: true,
              initialRating: 4,
            ),
            Opacity(
              opacity: 0.87,
              child: Padding(
                padding: getPadding(
                  left: 2,
                ),
                child: Text(
                  listlukasOneItemModelObj.titleTxt,
                  style: CustomTextStyles.bodySmall_1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
