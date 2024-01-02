import '../explore_nine_screen/widgets/listio_one3_item_widget.dart';
import '../explore_nine_screen/widgets/listthriller1_item_widget.dart';
import '../explore_nine_screen/widgets/listtitle_one3_item_widget.dart';
import 'bloc/explore_nine_bloc.dart';
import 'models/explore_nine_model.dart';
import 'models/listio_one3_item_model.dart';
import 'models/listthriller1_item_model.dart';
import 'models/listtitle_one3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/custom_app_bar.dart';

class ExploreNineScreen extends StatelessWidget {
  const ExploreNineScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreNineBloc>(
        create: (context) => ExploreNineBloc(
            ExploreNineState(exploreNineModelObj: ExploreNineModel()))
          ..add(ExploreNineInitialEvent()),
        child: ExploreNineScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray90001,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: getHorizontalSize(40),
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: BlocSelector<ExploreNineBloc, ExploreNineState,
                        TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return AppbarSearchview(
                          margin: getMargin(left: 20),
                          hintText: "lbl_search_movies".tr,
                          controller: searchController);
                    })),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 38),
                    child: Padding(
                        padding: getPadding(left: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Opacity(
                                            opacity: 0.87,
                                            child: Text(
                                                "lbl_discover_movies".tr,
                                                style: CustomTextStyles
                                                    .headlineSmallBold)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightDeepPurpleA200,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(bottom: 3))
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
                                                .imgThumbnailimage33,
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
                                                                      .end,
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
                                                                        top: 4,
                                                                        bottom:
                                                                            1)),
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
                                                                        top: 4,
                                                                        bottom:
                                                                            1)),
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
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(top: 26),
                                      child: Text("msg_categories_you_like".tr,
                                          style: theme.textTheme.titleSmall))),
                              SizedBox(
                                  height: getVerticalSize(108),
                                  child: BlocSelector<ExploreNineBloc,
                                          ExploreNineState, ExploreNineModel?>(
                                      selector: (state) =>
                                          state.exploreNineModelObj,
                                      builder: (context, exploreNineModelObj) {
                                        return ListView.separated(
                                            padding:
                                                getPadding(top: 14, right: 59),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  width: getHorizontalSize(9));
                                            },
                                            itemCount: exploreNineModelObj
                                                    ?.listthriller1ItemList
                                                    .length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              Listthriller1ItemModel model =
                                                  exploreNineModelObj
                                                              ?.listthriller1ItemList[
                                                          index] ??
                                                      Listthriller1ItemModel();
                                              return Listthriller1ItemWidget(
                                                  model);
                                            });
                                      })),
                              Padding(
                                  padding: getPadding(top: 19, right: 16),
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
                                      height: getVerticalSize(192),
                                      child: BlocSelector<
                                              ExploreNineBloc,
                                              ExploreNineState,
                                              ExploreNineModel?>(
                                          selector: (state) =>
                                              state.exploreNineModelObj,
                                          builder:
                                              (context, exploreNineModelObj) {
                                            return ListView.separated(
                                                padding: getPadding(top: 18),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      width: getHorizontalSize(
                                                          16));
                                                },
                                                itemCount: exploreNineModelObj
                                                        ?.listioOne3ItemList
                                                        .length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  ListioOne3ItemModel model =
                                                      exploreNineModelObj
                                                                  ?.listioOne3ItemList[
                                                              index] ??
                                                          ListioOne3ItemModel();
                                                  return ListioOne3ItemWidget(
                                                      model);
                                                });
                                          }))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: getVerticalSize(170),
                                      child: BlocSelector<
                                              ExploreNineBloc,
                                              ExploreNineState,
                                              ExploreNineModel?>(
                                          selector: (state) =>
                                              state.exploreNineModelObj,
                                          builder:
                                              (context, exploreNineModelObj) {
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
                                                itemCount: exploreNineModelObj
                                                        ?.listtitleOne3ItemList
                                                        .length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  ListtitleOne3ItemModel model =
                                                      exploreNineModelObj
                                                                  ?.listtitleOne3ItemList[
                                                              index] ??
                                                          ListtitleOne3ItemModel();
                                                  return ListtitleOne3ItemWidget(
                                                      model);
                                                });
                                          })))
                            ]))))));
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
}
