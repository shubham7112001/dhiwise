import '../models/listaction_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListactionItemWidget extends StatelessWidget {
  ListactionItemWidget(
    this.listactionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListactionItemModel listactionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Opacity(
          opacity: 0.87,
          child: Padding(
            padding: getPadding(
              top: 2,
            ),
            child: Text(
              listactionItemModelObj.actionTxt,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ),
        Spacer(),
        Opacity(
          opacity: 0.87,
          child: Padding(
            padding: getPadding(
              bottom: 3,
            ),
            child: Text(
              listactionItemModelObj.moreTxt,
              style: CustomTextStyles.bodySmallOnPrimary,
            ),
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgArrowright,
          height: getVerticalSize(16),
          width: getHorizontalSize(18),
          margin: getMargin(
            left: 4,
            bottom: 3,
          ),
        ),
      ],
    );
  }
}
