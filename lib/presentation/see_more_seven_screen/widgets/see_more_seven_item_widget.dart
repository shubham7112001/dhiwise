import '../models/see_more_seven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class SeeMoreSevenItemWidget extends StatelessWidget {
  SeeMoreSevenItemWidget(
    this.seeMoreSevenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeeMoreSevenItemModel seeMoreSevenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgThumbnailimage17,
          height: getVerticalSize(139),
          width: getHorizontalSize(99),
          radius: BorderRadius.circular(
            getHorizontalSize(2),
          ),
        ),
        CustomRatingBar(
          margin: getMargin(
            left: 2,
            top: 6,
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
              seeMoreSevenItemModelObj.titleTxt,
              style: CustomTextStyles.bodySmall_1,
            ),
          ),
        ),
      ],
    );
  }
}
