import '../explore_six_screen/widgets/listio_one_item_widget.dart';
import '../explore_six_screen/widgets/listtitle_one_item_widget.dart';
import '../explore_six_screen/widgets/listturner_item_widget.dart';
import '../explore_six_screen/widgets/listyesterday_item_widget.dart';
import 'bloc/explore_six_bloc.dart';
import 'models/explore_six_model.dart';
import 'models/listio_one_item_model.dart';
import 'models/listtitle_one_item_model.dart';
import 'models/listturner_item_model.dart';
import 'models/listyesterday_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/custom_app_bar.dart';

class ExploreSixScreen extends StatelessWidget {
  const ExploreSixScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreSixBloc>(
        create: (context) => ExploreSixBloc(
            ExploreSixState(exploreSixModelObj: ExploreSixModel()))
          ..add(ExploreSixInitialEvent()),
        child: ExploreSixScreen());
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
                title: BlocSelector<ExploreSixBloc, ExploreSixState,
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
                    padding: getPadding(top: 40),
                    child: Padding(
                        padding: getPadding(left: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Opacity(
                                  opacity: 0.87,
                                  child: Text("lbl_explore_movies".tr,
                                      style:
                                          CustomTextStyles.headlineSmallBold)),
                              Opacity(
                                  opacity: 0.87,
                                  child: Text("msg_find_something_you".tr,
                                      style: CustomTextStyles
                                          .bodyMediumOnPrimary)),
                              Padding(
                                  padding: getPadding(top: 14, right: 16),
                                  child: Row(children: [
                                    Opacity(
                                        opacity: 0.87,
                                        child: Padding(
                                            padding: getPadding(top: 2),
                                            child: Text("lbl_action".tr,
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
                                        height: getVerticalSize(16),
                                        width: getHorizontalSize(18),
                                        margin: getMargin(left: 4, bottom: 3))
                                  ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(top: 13),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                height: getVerticalSize(159),
                                                child: BlocSelector<
                                                        ExploreSixBloc,
                                                        ExploreSixState,
                                                        ExploreSixModel?>(
                                                    selector: (state) => state
                                                        .exploreSixModelObj,
                                                    builder: (context,
                                                        exploreSixModelObj) {
                                                      return ListView.separated(
                                                          padding: getPadding(
                                                              left: 3),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return SizedBox(
                                                                width:
                                                                    getHorizontalSize(
                                                                        16));
                                                          },
                                                          itemCount:
                                                              exploreSixModelObj
                                                                      ?.listturnerItemList
                                                                      .length ??
                                                                  0,
                                                          itemBuilder:
                                                              (context, index) {
                                                            ListturnerItemModel
                                                                model =
                                                                exploreSixModelObj
                                                                            ?.listturnerItemList[
                                                                        index] ??
                                                                    ListturnerItemModel();
                                                            return ListturnerItemWidget(
                                                                model);
                                                          });
                                                    })),
                                            SizedBox(
                                                height: getVerticalSize(202),
                                                child: BlocSelector<
                                                        ExploreSixBloc,
                                                        ExploreSixState,
                                                        ExploreSixModel?>(
                                                    selector: (state) => state
                                                        .exploreSixModelObj,
                                                    builder: (context,
                                                        exploreSixModelObj) {
                                                      return ListView.separated(
                                                          padding: getPadding(
                                                              left: 3,
                                                              top: 26,
                                                              right: 48),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return SizedBox(
                                                                width:
                                                                    getHorizontalSize(
                                                                        16));
                                                          },
                                                          itemCount:
                                                              exploreSixModelObj
                                                                      ?.listyesterdayItemList
                                                                      .length ??
                                                                  0,
                                                          itemBuilder:
                                                              (context, index) {
                                                            ListyesterdayItemModel
                                                                model =
                                                                exploreSixModelObj
                                                                            ?.listyesterdayItemList[
                                                                        index] ??
                                                                    ListyesterdayItemModel();
                                                            return ListyesterdayItemWidget(
                                                                model);
                                                          });
                                                    }))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 18, right: 16),
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
                                  child: Padding(
                                      padding: getPadding(top: 13),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                height: getVerticalSize(174),
                                                child: BlocSelector<
                                                        ExploreSixBloc,
                                                        ExploreSixState,
                                                        ExploreSixModel?>(
                                                    selector: (state) => state
                                                        .exploreSixModelObj,
                                                    builder: (context,
                                                        exploreSixModelObj) {
                                                      return ListView.separated(
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return SizedBox(
                                                                width:
                                                                    getHorizontalSize(
                                                                        16));
                                                          },
                                                          itemCount:
                                                              exploreSixModelObj
                                                                      ?.listioOneItemList
                                                                      .length ??
                                                                  0,
                                                          itemBuilder:
                                                              (context, index) {
                                                            ListioOneItemModel
                                                                model =
                                                                exploreSixModelObj
                                                                            ?.listioOneItemList[
                                                                        index] ??
                                                                    ListioOneItemModel();
                                                            return ListioOneItemWidget(
                                                                model);
                                                          });
                                                    })),
                                            SizedBox(
                                                height: getVerticalSize(170),
                                                child: BlocSelector<
                                                        ExploreSixBloc,
                                                        ExploreSixState,
                                                        ExploreSixModel?>(
                                                    selector: (state) => state
                                                        .exploreSixModelObj,
                                                    builder: (context,
                                                        exploreSixModelObj) {
                                                      return ListView.separated(
                                                          padding: getPadding(
                                                              top: 11),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return SizedBox(
                                                                width:
                                                                    getHorizontalSize(
                                                                        16));
                                                          },
                                                          itemCount:
                                                              exploreSixModelObj
                                                                      ?.listtitleOneItemList
                                                                      .length ??
                                                                  0,
                                                          itemBuilder:
                                                              (context, index) {
                                                            ListtitleOneItemModel
                                                                model =
                                                                exploreSixModelObj
                                                                            ?.listtitleOneItemList[
                                                                        index] ??
                                                                    ListtitleOneItemModel();
                                                            return ListtitleOneItemWidget(
                                                                model);
                                                          });
                                                    }))
                                          ])))
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
