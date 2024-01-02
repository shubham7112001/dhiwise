import '../channel_four_screen/widgets/channel_four_item_widget.dart';
import 'bloc/channel_four_bloc.dart';
import 'models/channel_four_item_model.dart';
import 'models/channel_four_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/custom_app_bar.dart';

class ChannelFourScreen extends StatelessWidget {
  const ChannelFourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChannelFourBloc>(
      create: (context) => ChannelFourBloc(ChannelFourState(
        channelFourModelObj: ChannelFourModel(),
      ))
        ..add(ChannelFourInitialEvent()),
      child: ChannelFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        appBar: CustomAppBar(
          title: AppbarTitle(
            text: "lbl_live_channel".tr,
            margin: getMargin(
              left: 11,
            ),
          ),
          actions: [
            AppbarImage(
              svgPath: ImageConstant.imgAirplayicon,
              margin: getMargin(
                left: 19,
                top: 19,
                right: 20,
              ),
            ),
            AppbarImage(
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 26,
                top: 19,
                right: 39,
              ),
            ),
          ],
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 8,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getVerticalSize(180),
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgThumbnailimage180x360,
                          height: getVerticalSize(180),
                          width: getHorizontalSize(360),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 8,
                              right: 8,
                              bottom: 8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgPlay,
                                  height: getSize(36),
                                  width: getSize(36),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 46,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgTrash,
                                        height: getSize(18),
                                        width: getSize(18),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgSettings,
                                        height: getSize(18),
                                        width: getSize(18),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 7,
                                          bottom: 7,
                                        ),
                                        child: Container(
                                          height: getVerticalSize(4),
                                          width: getHorizontalSize(240),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.onPrimary
                                                .withOpacity(1),
                                          ),
                                          child: ClipRRect(
                                            child: LinearProgressIndicator(
                                              value: 0.57,
                                              backgroundColor: theme
                                                  .colorScheme.onPrimary
                                                  .withOpacity(1),
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                appTheme.deepPurpleA200,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgSettingsOnprimary,
                                        height: getSize(18),
                                        width: getSize(18),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant
                                            .imgSettingsOnprimary18x18,
                                        height: getSize(18),
                                        width: getSize(18),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 48,
                    ),
                    child: BlocSelector<ChannelFourBloc, ChannelFourState,
                        ChannelFourModel?>(
                      selector: (state) => state.channelFourModelObj,
                      builder: (context, channelFourModelObj) {
                        return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return Padding(
                              padding: getPadding(
                                top: 3.5,
                                bottom: 3.5,
                              ),
                              child: SizedBox(
                                width: double.maxFinite,
                                child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: theme.colorScheme.onPrimary
                                      .withOpacity(0.08),
                                ),
                              ),
                            );
                          },
                          itemCount:
                              channelFourModelObj?.channelFourItemList.length ??
                                  0,
                          itemBuilder: (context, index) {
                            ChannelFourItemModel model = channelFourModelObj
                                    ?.channelFourItemList[index] ??
                                ChannelFourItemModel();
                            return ChannelFourItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
