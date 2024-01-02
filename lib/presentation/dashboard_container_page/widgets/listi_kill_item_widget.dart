import '../models/listi_kill_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class ListiKillItemWidget extends StatelessWidget {
  ListiKillItemWidget(
    this.listiKillItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListiKillItemModel listiKillItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(90),
      child: Padding(
        padding: getPadding(
          bottom: 1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgThumbnailimage6,
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
                  listiKillItemModelObj.titleTxt,
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
