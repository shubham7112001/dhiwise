import 'bloc/search_six_bloc.dart';
import 'models/search_six_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/custom_text_form_field.dart';

class SearchSixScreen extends StatelessWidget {
  const SearchSixScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchSixBloc>(
        create: (context) =>
            SearchSixBloc(SearchSixState(searchSixModelObj: SearchSixModel()))
              ..add(SearchSixInitialEvent()),
        child: SearchSixScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray90001,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    padding: getPadding(top: 12),
                    child: Padding(
                        padding: getPadding(left: 16, bottom: 76),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              BlocSelector<SearchSixBloc, SearchSixState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.searchboxoneController,
                                  builder: (context, searchboxoneController) {
                                    return CustomTextFormField(
                                        controller: searchboxoneController,
                                        margin: getMargin(right: 16),
                                        hintText: "lbl_marvel".tr,
                                        hintStyle: CustomTextStyles.bodySmall_1,
                                        textInputAction: TextInputAction.done,
                                        suffix: Container(
                                            margin: getMargin(
                                                left: 30,
                                                top: 7,
                                                right: 12,
                                                bottom: 7),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgClose)),
                                        suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(32)),
                                        contentPadding: getPadding(
                                            left: 16, top: 8, bottom: 8),
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .fillBlackDd,
                                        fillColor: appTheme.black900Dd);
                                  }),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(top: 34),
                                      child: Text("msg_search_result_for2".tr,
                                          style:
                                              theme.textTheme.headlineSmall))),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(top: 22),
                                      child: Text("lbl_movies".tr,
                                          style: theme.textTheme.bodyMedium))),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(top: 21),
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        Expanded(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapMoviecard1(context);
                                                  },
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgThumbnailimage1,
                                                            height:
                                                                getVerticalSize(
                                                                    189),
                                                            width:
                                                                getHorizontalSize(
                                                                    120),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        2))),
                                                        Opacity(
                                                            opacity: 0.87,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Text(
                                                                    "lbl_turner_hooch"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall))),
                                                        Opacity(
                                                            opacity: 0.6,
                                                            child: Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        117),
                                                                margin:
                                                                    getMargin(
                                                                        top: 2),
                                                                child: Text(
                                                                    "msg_tom_hanks_returns"
                                                                        .tr,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: CustomTextStyles
                                                                        .bodySmallOnPrimary_1
                                                                        .copyWith(
                                                                            height:
                                                                                1.33))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16, bottom: 14),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgThumbnailimage22,
                                                            height:
                                                                getVerticalSize(
                                                                    189),
                                                            width:
                                                                getHorizontalSize(
                                                                    120),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        2))),
                                                        Opacity(
                                                            opacity: 0.87,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Text(
                                                                    "lbl_helen"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall))),
                                                        Opacity(
                                                            opacity: 0.6,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 4),
                                                                child: Text(
                                                                    "msg_based_on_true_story"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .bodySmallOnPrimary_1)))
                                                      ]))
                                            ])),
                                        Padding(
                                            padding: getPadding(left: 16),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgThumbnailimage21,
                                                      height:
                                                          getVerticalSize(189),
                                                      width: getHorizontalSize(
                                                          120),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  2))),
                                                  Opacity(
                                                      opacity: 0.87,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 6),
                                                          child: Text(
                                                              "lbl_eggnoid".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall))),
                                                  Opacity(
                                                      opacity: 0.6,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  120),
                                                          margin:
                                                              getMargin(top: 1),
                                                          child: Text(
                                                              "msg_the_heroes_within"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: CustomTextStyles
                                                                  .bodySmallOnPrimary_1
                                                                  .copyWith(
                                                                      height:
                                                                          1.33))))
                                                ]))
                                      ]))),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(top: 8),
                                      child: Text("lbl_tv_channels".tr,
                                          style: theme.textTheme.bodyMedium))),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(top: 15),
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        Expanded(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapMoviecard2(context);
                                                  },
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgThumbnailimage1,
                                                            height:
                                                                getVerticalSize(
                                                                    189),
                                                            width:
                                                                getHorizontalSize(
                                                                    120),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        2))),
                                                        Opacity(
                                                            opacity: 0.87,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Text(
                                                                    "lbl_turner_hooch"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall))),
                                                        Opacity(
                                                            opacity: 0.6,
                                                            child: Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        117),
                                                                margin:
                                                                    getMargin(
                                                                        top: 2),
                                                                child: Text(
                                                                    "msg_tom_hanks_returns"
                                                                        .tr,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: CustomTextStyles
                                                                        .bodySmallOnPrimary_1
                                                                        .copyWith(
                                                                            height:
                                                                                1.33))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16, bottom: 14),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgThumbnailimage22,
                                                            height:
                                                                getVerticalSize(
                                                                    189),
                                                            width:
                                                                getHorizontalSize(
                                                                    120),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        2))),
                                                        Opacity(
                                                            opacity: 0.87,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Text(
                                                                    "lbl_helen"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall))),
                                                        Opacity(
                                                            opacity: 0.6,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 4),
                                                                child: Text(
                                                                    "msg_based_on_true_story"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .bodySmallOnPrimary_1)))
                                                      ]))
                                            ])),
                                        Padding(
                                            padding: getPadding(left: 16),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgThumbnailimage21,
                                                      height:
                                                          getVerticalSize(189),
                                                      width: getHorizontalSize(
                                                          120),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  2))),
                                                  Opacity(
                                                      opacity: 0.87,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 6),
                                                          child: Text(
                                                              "lbl_eggnoid".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall))),
                                                  Opacity(
                                                      opacity: 0.6,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  120),
                                                          margin:
                                                              getMargin(top: 1),
                                                          child: Text(
                                                              "msg_the_heroes_within"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: CustomTextStyles
                                                                  .bodySmallOnPrimary_1
                                                                  .copyWith(
                                                                      height:
                                                                          1.33))))
                                                ]))
                                      ]))),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(top: 15),
                                      child: Text("lbl_playlist".tr,
                                          style: theme.textTheme.bodyMedium))),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(top: 14),
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        Expanded(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapMoviecard3(context);
                                                  },
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgThumbnailimage1,
                                                            height:
                                                                getVerticalSize(
                                                                    189),
                                                            width:
                                                                getHorizontalSize(
                                                                    120),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        2))),
                                                        Opacity(
                                                            opacity: 0.87,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Text(
                                                                    "lbl_turner_hooch"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall))),
                                                        Opacity(
                                                            opacity: 0.6,
                                                            child: Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        117),
                                                                margin:
                                                                    getMargin(
                                                                        top: 2),
                                                                child: Text(
                                                                    "msg_tom_hanks_returns"
                                                                        .tr,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: CustomTextStyles
                                                                        .bodySmallOnPrimary_1
                                                                        .copyWith(
                                                                            height:
                                                                                1.33))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16, bottom: 14),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgThumbnailimage22,
                                                            height:
                                                                getVerticalSize(
                                                                    189),
                                                            width:
                                                                getHorizontalSize(
                                                                    120),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        2))),
                                                        Opacity(
                                                            opacity: 0.87,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Text(
                                                                    "lbl_helen"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall))),
                                                        Opacity(
                                                            opacity: 0.6,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 4),
                                                                child: Text(
                                                                    "msg_based_on_true_story"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .bodySmallOnPrimary_1)))
                                                      ]))
                                            ])),
                                        Padding(
                                            padding: getPadding(left: 16),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgThumbnailimage21,
                                                      height:
                                                          getVerticalSize(189),
                                                      width: getHorizontalSize(
                                                          120),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  2))),
                                                  Opacity(
                                                      opacity: 0.87,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 6),
                                                          child: Text(
                                                              "lbl_eggnoid".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall))),
                                                  Opacity(
                                                      opacity: 0.6,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  120),
                                                          margin:
                                                              getMargin(top: 1),
                                                          child: Text(
                                                              "msg_the_heroes_within"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: CustomTextStyles
                                                                  .bodySmallOnPrimary_1
                                                                  .copyWith(
                                                                      height:
                                                                          1.33))))
                                                ]))
                                      ])))
                            ]))))));
  }

  /// Navigates to the detailPageEightScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the detailPageEightScreen.
  onTapMoviecard1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageEightScreen,
    );
  }

  /// Navigates to the detailPageEightScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the detailPageEightScreen.
  onTapMoviecard2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageEightScreen,
    );
  }

  /// Navigates to the detailPageEightScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the detailPageEightScreen.
  onTapMoviecard3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageEightScreen,
    );
  }
}
