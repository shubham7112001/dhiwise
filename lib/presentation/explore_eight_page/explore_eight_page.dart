import '../explore_eight_page/widgets/listio_one2_item_widget.dart';
import '../explore_eight_page/widgets/listthriller_item_widget.dart';
import '../explore_eight_page/widgets/listtitle_one2_item_widget.dart';
import 'bloc/explore_eight_bloc.dart';
import 'models/explore_eight_model.dart';
import 'models/listio_one2_item_model.dart';
import 'models/listthriller_item_model.dart';
import 'models/listtitle_one2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/custom_app_bar.dart';

class ExploreEightPage extends StatelessWidget {
  const ExploreEightPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreEightBloc>(
        create: (context) => ExploreEightBloc(
            ExploreEightState(exploreEightModelObj: ExploreEightModel()))
          ..add(ExploreEightInitialEvent()),
        child: ExploreEightPage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray90001,
            appBar: CustomAppBar(
                title: AppbarTitle(
                    text: "lbl_explore".tr, margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgTrophy,
                      margin: getMargin(left: 18, top: 18, right: 19)),
                  AppbarImage(
                      svgPath: ImageConstant.imgLock,
                      margin: getMargin(left: 24, top: 18, right: 37))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 26),
                    child: Padding(
                        padding: getPadding(left: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Opacity(
                                  opacity: 0.87,
                                  child: Text("msg_categories_you_like".tr,
                                      style: theme.textTheme.titleSmall)),
                              SizedBox(
                                  height: getVerticalSize(110),
                                  child: BlocSelector<
                                          ExploreEightBloc,
                                          ExploreEightState,
                                          ExploreEightModel?>(
                                      selector: (state) =>
                                          state.exploreEightModelObj,
                                      builder: (context, exploreEightModelObj) {
                                        return ListView.separated(
                                            padding:
                                                getPadding(top: 16, right: 59),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  width: getHorizontalSize(9));
                                            },
                                            itemCount: exploreEightModelObj
                                                    ?.listthrillerItemList
                                                    .length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              ListthrillerItemModel model =
                                                  exploreEightModelObj
                                                              ?.listthrillerItemList[
                                                          index] ??
                                                      ListthrillerItemModel();
                                              return ListthrillerItemWidget(
                                                  model);
                                            });
                                      })),
                              Padding(
                                  padding: getPadding(top: 18, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Opacity(
                                            opacity: 0.87,
                                            child: Text("lbl_best_movie".tr,
                                                style: CustomTextStyles
                                                    .headlineSmallBold)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightDeepPurpleA200,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(bottom: 3),
                                            onTap: () {
                                              onTapImgArrowrightone(context);
                                            })
                                      ])),
                              Container(
                                  height: getSize(328),
                                  width: getSize(328),
                                  margin: getMargin(top: 12),
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgThumbnailimage328x328,
                                            height: getSize(328),
                                            width: getSize(328),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16, bottom: 19),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Opacity(
                                                          opacity: 0.87,
                                                          child: Text(
                                                              "lbl_label".tr,
                                                              style: CustomTextStyles
                                                                  .titleLargeBold)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 9),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgStar,
                                                                    height:
                                                                        getSize(
                                                                            6),
                                                                    width:
                                                                        getSize(
                                                                            6),
                                                                    margin: getMargin(
                                                                        top:
                                                                            4)),
                                                                Opacity(
                                                                    opacity:
                                                                        0.87,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                2),
                                                                        child: Text(
                                                                            "lbl_4_5"
                                                                                .tr
                                                                                .toUpperCase(),
                                                                            style:
                                                                                CustomTextStyles.bodySmallOnPrimary10))),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgClock,
                                                                    height:
                                                                        getSize(
                                                                            6),
                                                                    width:
                                                                        getSize(
                                                                            6),
                                                                    margin: getMargin(
                                                                        left: 8,
                                                                        top: 2,
                                                                        bottom:
                                                                            3)),
                                                                Opacity(
                                                                    opacity:
                                                                        0.87,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                2),
                                                                        child: Text(
                                                                            "lbl_00_00"
                                                                                .tr
                                                                                .toUpperCase(),
                                                                            style:
                                                                                CustomTextStyles.bodySmallOnPrimary10)))
                                                              ]))
                                                    ])))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 17, right: 16),
                                  child: Row(children: [
                                    Opacity(
                                        opacity: 0.87,
                                        child: Padding(
                                            padding: getPadding(bottom: 2),
                                            child: Text("lbl_drama".tr,
                                                style: theme
                                                    .textTheme.titleSmall))),
                                    Spacer(),
                                    Opacity(
                                        opacity: 0.87,
                                        child: Padding(
                                            padding: getPadding(bottom: 3),
                                            child: Text("lbl_more".tr,
                                                style: CustomTextStyles
                                                    .bodySmallOnPrimary))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(18),
                                        width: getSize(18),
                                        margin: getMargin(left: 4))
                                  ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: getVerticalSize(194),
                                      child: BlocSelector<
                                              ExploreEightBloc,
                                              ExploreEightState,
                                              ExploreEightModel?>(
                                          selector: (state) =>
                                              state.exploreEightModelObj,
                                          builder:
                                              (context, exploreEightModelObj) {
                                            return ListView.separated(
                                                padding: getPadding(top: 20),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      width: getHorizontalSize(
                                                          16));
                                                },
                                                itemCount: exploreEightModelObj
                                                        ?.listioOne2ItemList
                                                        .length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  ListioOne2ItemModel model =
                                                      exploreEightModelObj
                                                                  ?.listioOne2ItemList[
                                                              index] ??
                                                          ListioOne2ItemModel();
                                                  return ListioOne2ItemWidget(
                                                      model);
                                                });
                                          }))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: getVerticalSize(170),
                                      child: BlocSelector<
                                              ExploreEightBloc,
                                              ExploreEightState,
                                              ExploreEightModel?>(
                                          selector: (state) =>
                                              state.exploreEightModelObj,
                                          builder:
                                              (context, exploreEightModelObj) {
                                            return ListView.separated(
                                                padding: getPadding(top: 11),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      width: getHorizontalSize(
                                                          16));
                                                },
                                                itemCount: exploreEightModelObj
                                                        ?.listtitleOne2ItemList
                                                        .length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  ListtitleOne2ItemModel model =
                                                      exploreEightModelObj
                                                                  ?.listtitleOne2ItemList[
                                                              index] ??
                                                          ListtitleOne2ItemModel();
                                                  return ListtitleOne2ItemWidget(
                                                      model);
                                                });
                                          })))
                            ]))))));
  }

  /// Navigates to the exploreNineScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the exploreNineScreen.
  onTapImgArrowrightone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exploreNineScreen,
    );
  }
}
