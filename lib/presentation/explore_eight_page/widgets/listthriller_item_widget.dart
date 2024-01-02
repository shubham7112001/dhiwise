import '../models/listthriller_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListthrillerItemWidget extends StatelessWidget {
  ListthrillerItemWidget(
    this.listthrillerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListthrillerItemModel listthrillerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(94),
      width: getHorizontalSize(89),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnailimage94x89,
            height: getVerticalSize(94),
            width: getHorizontalSize(89),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0.87,
              child: Text(
                listthrillerItemModelObj.thrillertwoTxt,
                style: CustomTextStyles.bodyMedium_2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
