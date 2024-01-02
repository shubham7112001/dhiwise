import '../models/channel_four_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ChannelFourItemWidget extends StatelessWidget {
  ChannelFourItemWidget(
    this.channelFourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChannelFourItemModel channelFourItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: getSize(56),
          width: getSize(56),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgKtvicon,
                height: getSize(56),
                width: getSize(56),
                radius: BorderRadius.circular(
                  getHorizontalSize(4),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getSize(56),
                  width: getSize(56),
                  decoration: AppDecoration.outlineBlackDd.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder2,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgBackgroundimage,
                    height: getSize(56),
                    width: getSize(56),
                    radius: BorderRadius.circular(
                      getHorizontalSize(4),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 17,
            bottom: 19,
          ),
          child: Text(
            channelFourItemModelObj.ktvTxt,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
