import '../models/listio_one3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListioOne3ItemWidget extends StatelessWidget {
  ListioOne3ItemWidget(
    this.listioOne3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListioOne3ItemModel listioOne3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(120),
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            bottom: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgThumbnailimage188x120,
                height: getVerticalSize(125),
                width: getHorizontalSize(120),
                radius: BorderRadius.circular(
                  getHorizontalSize(2),
                ),
              ),
              Opacity(
                opacity: 0.87,
                child: Text(
                  listioOne3ItemModelObj.titleTxt,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Opacity(
                opacity: 0.87,
                child: Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    listioOne3ItemModelObj.subtitleTxt,
                    style: CustomTextStyles.bodySmallOnPrimary_3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
