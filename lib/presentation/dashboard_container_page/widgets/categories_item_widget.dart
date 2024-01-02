import '../models/categories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(
    this.categoriesItemModelObj, {
    Key? key,
    this.onTapImgDramaone,
  }) : super(
          key: key,
        );

  CategoriesItemModel categoriesItemModelObj;

  VoidCallback? onTapImgDramaone;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(90),
      child: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          height: getVerticalSize(30),
          width: getHorizontalSize(90),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCategorythumbnail,
                height: getVerticalSize(30),
                width: getHorizontalSize(90),
                radius: BorderRadius.circular(
                  getHorizontalSize(2),
                ),
                alignment: Alignment.center,
                onTap: () {
                  onTapImgDramaone?.call();
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Opacity(
                  opacity: 0.87,
                  child: Padding(
                    padding: getPadding(
                      right: 20,
                    ),
                    child: Text(
                      categoriesItemModelObj.dramatwoTxt,
                      style: CustomTextStyles.bodyMedium_2,
                    ),
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
