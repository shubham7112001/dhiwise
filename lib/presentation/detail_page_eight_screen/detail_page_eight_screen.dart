import 'bloc/detail_page_eight_bloc.dart';
import 'models/detail_page_eight_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:shubham_tiwari_s_application1/widgets/custom_elevated_button.dart';
import 'package:shubham_tiwari_s_application1/widgets/custom_icon_button.dart';

class DetailPageEightScreen extends StatelessWidget {
  const DetailPageEightScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailPageEightBloc>(
        create: (context) => DetailPageEightBloc(DetailPageEightState(
            detailPageEightModelObj: DetailPageEightModel()))
          ..add(DetailPageEightInitialEvent()),
        child: DetailPageEightScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<DetailPageEightBloc, DetailPageEightState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray90001,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: getVerticalSize(205),
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                          height: getVerticalSize(188),
                                          width: double.maxFinite,
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgBackgroundblur,
                                                    height:
                                                        getVerticalSize(188),
                                                    width:
                                                        getHorizontalSize(360),
                                                    radius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                2)),
                                                    alignment:
                                                        Alignment.center),
                                                CustomAppBar(
                                                    height: getVerticalSize(40),
                                                    leadingWidth:
                                                        getHorizontalSize(40),
                                                    leading: AppbarImage1(
                                                        svgPath: ImageConstant
                                                            .imgArrowleft,
                                                        margin:
                                                            getMargin(left: 16),
                                                        onTap: () {
                                                          onTapArrowleftone(
                                                              context);
                                                        }),
                                                    actions: [
                                                      AppbarImage(
                                                          svgPath: ImageConstant
                                                              .imgSearch,
                                                          margin: getMargin(
                                                              left: 18,
                                                              top: 3,
                                                              right: 18,
                                                              bottom: 3))
                                                    ])
                                              ]))),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgThumbnailimage24,
                                      height: getVerticalSize(133),
                                      width: getHorizontalSize(99),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(2)),
                                      alignment: Alignment.bottomCenter)
                                ])),
                        Expanded(
                            child: SingleChildScrollView(
                                padding: getPadding(top: 14),
                                child: Padding(
                                    padding: getPadding(bottom: 5),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 35, right: 51),
                                              child: Row(children: [
                                                CustomElevatedButton(
                                                    width:
                                                        getHorizontalSize(136),
                                                    text: "lbl_play_now".tr,
                                                    leftIcon: Container(
                                                        margin:
                                                            getMargin(right: 7),
                                                        child: CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgPlay)),
                                                    onTap: () {
                                                      onTapPlaynow(context);
                                                    }),
                                                CustomIconButton(
                                                    height: getSize(38),
                                                    width: getSize(38),
                                                    margin: getMargin(left: 8),
                                                    padding:
                                                        getPadding(all: 12),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgShare)),
                                                CustomIconButton(
                                                    height: getSize(38),
                                                    width: getSize(38),
                                                    margin: getMargin(left: 8),
                                                    padding:
                                                        getPadding(all: 12),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgUser)),
                                                CustomIconButton(
                                                    height: getSize(38),
                                                    width: getSize(38),
                                                    margin: getMargin(left: 8),
                                                    padding:
                                                        getPadding(all: 12),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgComputer))
                                              ])),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Opacity(
                                                  opacity: 0.87,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 31),
                                                      child: Text(
                                                          "lbl_captain_marvel"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .headlineSmall)))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(top: 7),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Opacity(
                                                            opacity: 0.87,
                                                            child: Text(
                                                                "lbl_2019".tr,
                                                                style: CustomTextStyles
                                                                    .bodySmallOnPrimary)),
                                                        Container(
                                                            height: getSize(3),
                                                            width: getSize(3),
                                                            margin: getMargin(
                                                                left: 3,
                                                                top: 7,
                                                                bottom: 4),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onPrimary
                                                                    .withOpacity(
                                                                        1),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(1)))),
                                                        Opacity(
                                                            opacity: 0.87,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            2),
                                                                child: Text(
                                                                    "lbl_action"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .bodySmallOnPrimary))),
                                                        Container(
                                                            height: getSize(3),
                                                            width: getSize(3),
                                                            margin: getMargin(
                                                                left: 4,
                                                                top: 7,
                                                                bottom: 4),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onPrimary
                                                                    .withOpacity(
                                                                        1),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(1)))),
                                                        Opacity(
                                                            opacity: 0.87,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            4),
                                                                child: Text(
                                                                    "lbl_4_5"
                                                                        .tr
                                                                        .toUpperCase(),
                                                                    style: CustomTextStyles
                                                                        .bodySmall10))),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgStar,
                                                            height: getSize(6),
                                                            width: getSize(6),
                                                            margin: getMargin(
                                                                left: 5,
                                                                top: 5,
                                                                bottom: 3))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Opacity(
                                                  opacity: 0.87,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 14),
                                                      child: Text(
                                                          "lbl_1_hr_49min".tr,
                                                          style: CustomTextStyles
                                                              .bodySmallOnPrimary)))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: getVerticalSize(49),
                                                  width: getHorizontalSize(328),
                                                  margin: getMargin(top: 27),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Opacity(
                                                                opacity: 0.87,
                                                                child: SizedBox(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            321),
                                                                    child: Text(
                                                                        "msg_set_in_the_1990s3"
                                                                            .tr,
                                                                        maxLines:
                                                                            3,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: CustomTextStyles
                                                                            .bodySmallOnPrimary_2
                                                                            .copyWith(height: 1.33))))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: Opacity(
                                                                opacity: 0.87,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        bottom:
                                                                            2),
                                                                    child: Text(
                                                                        "lbl_more"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodySmallDeeppurpleA200))))
                                                      ]))),
                                          Opacity(
                                              opacity: 0.87,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 16, top: 18),
                                                  child: Text(
                                                      "lbl_more_info".tr,
                                                      style: theme.textTheme
                                                          .bodyMedium))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 16, top: 9),
                                              child: Row(children: [
                                                Opacity(
                                                    opacity: 0.87,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            bottom: 1),
                                                        child: Text(
                                                            "lbl_director".tr,
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimary))),
                                                Opacity(
                                                    opacity: 0.87,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 38),
                                                        child: Text(
                                                            "msg_anna_boden_ryan"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimary_2)))
                                              ])),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 10, right: 29),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Opacity(
                                                        opacity: 0.87,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                bottom: 15),
                                                            child: Text(
                                                                "lbl_cast".tr,
                                                                style: CustomTextStyles
                                                                    .bodySmallOnPrimary))),
                                                    Expanded(
                                                        child: Opacity(
                                                            opacity: 0.87,
                                                            child: Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        230),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            57),
                                                                child: Text(
                                                                    "msg_brie_larson_samuel"
                                                                        .tr,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: CustomTextStyles
                                                                        .bodySmallOnPrimary_2
                                                                        .copyWith(
                                                                            height:
                                                                                1.33)))))
                                                  ])),
                                          Padding(
                                              padding: getPadding(top: 24),
                                              child: Divider()),
                                          Opacity(
                                              opacity: 0.87,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 16, top: 28),
                                                  child: Text(
                                                      "msg_you_might_also_like"
                                                          .tr,
                                                      style: theme.textTheme
                                                          .bodyMedium))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  padding: getPadding(
                                                      left: 19, top: 15),
                                                  child: IntrinsicWidth(
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                        Expanded(
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                              Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgThumbnailimage188x120,
                                                                        height: getVerticalSize(
                                                                            188),
                                                                        width: getHorizontalSize(
                                                                            120),
                                                                        radius:
                                                                            BorderRadius.circular(getHorizontalSize(2))),
                                                                    Opacity(
                                                                        opacity:
                                                                            0.87,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(top: 4),
                                                                            child: Text("lbl_io_netflix".tr, style: theme.textTheme.bodySmall))),
                                                                    Opacity(
                                                                        opacity:
                                                                            0.6,
                                                                        child: Container(
                                                                            width:
                                                                                getHorizontalSize(120),
                                                                            margin: getMargin(top: 2),
                                                                            child: Text("msg_in_near_future_we".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallOnPrimary_1.copyWith(height: 1.33))))
                                                                  ]),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              16),
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgThumbnailimage6,
                                                                            height: getVerticalSize(188),
                                                                            width: getHorizontalSize(120),
                                                                            radius: BorderRadius.circular(getHorizontalSize(2))),
                                                                        Opacity(
                                                                            opacity:
                                                                                0.87,
                                                                            child:
                                                                                Padding(padding: getPadding(top: 4), child: Text("lbl_i_kill_giants".tr, style: theme.textTheme.bodySmall))),
                                                                        Opacity(
                                                                            opacity:
                                                                                0.6,
                                                                            child: Container(
                                                                                width: getHorizontalSize(101),
                                                                                margin: getMargin(top: 2),
                                                                                child: Text("msg_no_more_surrender".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallOnPrimary_1.copyWith(height: 1.33))))
                                                                      ]))
                                                            ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgThumbnailimage8,
                                                                      height:
                                                                          getVerticalSize(
                                                                              188),
                                                                      width: getHorizontalSize(
                                                                          120),
                                                                      radius: BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(2))),
                                                                  Opacity(
                                                                      opacity:
                                                                          0.87,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  5),
                                                                          child: Text(
                                                                              "msg_angel_has_fallen2".tr,
                                                                              style: theme.textTheme.bodySmall))),
                                                                  Opacity(
                                                                      opacity:
                                                                          0.6,
                                                                      child: Container(
                                                                          width: getHorizontalSize(
                                                                              120),
                                                                          margin: getMargin(
                                                                              top:
                                                                                  1),
                                                                          child: Text(
                                                                              "msg_loyalty_under_everything".tr,
                                                                              maxLines: 2,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              style: CustomTextStyles.bodySmallOnPrimary_1.copyWith(height: 1.33))))
                                                                ]))
                                                      ]))))
                                        ]))))
                      ]))));
    });
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the channelFourScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the channelFourScreen.
  onTapPlaynow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.channelFourScreen,
    );
  }
}
