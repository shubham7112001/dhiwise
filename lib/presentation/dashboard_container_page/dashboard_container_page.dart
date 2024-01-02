import '../dashboard_container_page/widgets/categories_item_widget.dart';
import '../dashboard_container_page/widgets/list_item_widget.dart';
import '../dashboard_container_page/widgets/listi_kill_item_widget.dart';
import '../dashboard_container_page/widgets/listlukas_one_item_widget.dart';
import '../dashboard_container_page/widgets/listthe_item_widget.dart';
import '../dashboard_container_page/widgets/listtitle_item_widget.dart';
import 'bloc/dashboard_container_bloc.dart';
import 'models/categories_item_model.dart';
import 'models/dashboard_container_model.dart';
import 'models/list_item_model.dart';
import 'models/listi_kill_item_model.dart';
import 'models/listlukas_one_item_model.dart';
import 'models/listthe_item_model.dart';
import 'models/listtitle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/custom_app_bar.dart';

class DashboardContainerPage extends StatelessWidget {
  const DashboardContainerPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardContainerBloc>(
        create: (context) => DashboardContainerBloc(DashboardContainerState(
            dashboardContainerModelObj: DashboardContainerModel()))
          ..add(DashboardContainerInitialEvent()),
        child: DashboardContainerPage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray90001,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                title: AppbarTitle(
                    text: "lbl_nons".tr, margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgTrophy,
                      margin: getMargin(left: 18, top: 19, right: 16)),
                  AppbarImage(
                      svgPath: ImageConstant.imgLock,
                      margin: getMargin(left: 24, top: 19, right: 34))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 6),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  height: getVerticalSize(300),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgHerocardimage,
                                            height: getVerticalSize(300),
                                            width: getHorizontalSize(360),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 18, bottom: 24),
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
                                                              "lbl_moonlight"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .headlineSmallBold)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 9),
                                                          child: Row(children: [
                                                            Opacity(
                                                                opacity: 0.6,
                                                                child: Text(
                                                                    "lbl_sub_label"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .bodySmallOnPrimary_1)),
                                                            Container(
                                                                height:
                                                                    getSize(3),
                                                                width:
                                                                    getSize(3),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            17,
                                                                        top: 5,
                                                                        bottom:
                                                                            6),
                                                                decoration: BoxDecoration(
                                                                    color: theme
                                                                        .colorScheme
                                                                        .onPrimary
                                                                        .withOpacity(
                                                                            1),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            getHorizontalSize(1)))),
                                                            Opacity(
                                                                opacity: 0.87,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left: 4,
                                                                        top: 2),
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
                                                                height:
                                                                    getSize(6),
                                                                width:
                                                                    getSize(6),
                                                                margin:
                                                                    getMargin(
                                                                        left: 6,
                                                                        top: 5,
                                                                        bottom:
                                                                            3))
                                                          ]))
                                                    ])))
                                      ])),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 30),
                                      child: Text("lbl_special_for_you".tr,
                                          style: theme.textTheme.bodyMedium))),
                              SizedBox(
                                  height: getVerticalSize(185),
                                  child: BlocSelector<
                                          DashboardContainerBloc,
                                          DashboardContainerState,
                                          DashboardContainerModel?>(
                                      selector: (state) =>
                                          state.dashboardContainerModelObj,
                                      builder: (context,
                                          dashboardContainerModelObj) {
                                        return ListView.separated(
                                            padding: getPadding(
                                                left: 16, top: 16, right: 39),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  width: getHorizontalSize(16));
                                            },
                                            itemCount:
                                                dashboardContainerModelObj
                                                        ?.listtheItemList
                                                        .length ??
                                                    0,
                                            itemBuilder: (context, index) {
                                              ListtheItemModel model =
                                                  dashboardContainerModelObj
                                                              ?.listtheItemList[
                                                          index] ??
                                                      ListtheItemModel();
                                              return ListtheItemWidget(model);
                                            });
                                      })),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 37),
                                      child: Text("lbl_upcoming_movies".tr,
                                          style: theme.textTheme.bodyMedium))),
                              SizedBox(
                                  height: getVerticalSize(204),
                                  child: BlocSelector<
                                          DashboardContainerBloc,
                                          DashboardContainerState,
                                          DashboardContainerModel?>(
                                      selector: (state) =>
                                          state.dashboardContainerModelObj,
                                      builder: (context,
                                          dashboardContainerModelObj) {
                                        return ListView.separated(
                                            padding: getPadding(
                                                left: 16, top: 19, right: 41),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  width: getHorizontalSize(16));
                                            },
                                            itemCount:
                                                dashboardContainerModelObj
                                                        ?.listtitleItemList
                                                        .length ??
                                                    0,
                                            itemBuilder: (context, index) {
                                              ListtitleItemModel model =
                                                  dashboardContainerModelObj
                                                              ?.listtitleItemList[
                                                          index] ??
                                                      ListtitleItemModel();
                                              return ListtitleItemWidget(model);
                                            });
                                      })),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 20),
                                      child: Text("lbl_featured".tr,
                                          style: theme.textTheme.bodyMedium))),
                              SizedBox(
                                  height: getVerticalSize(197),
                                  child: BlocSelector<
                                          DashboardContainerBloc,
                                          DashboardContainerState,
                                          DashboardContainerModel?>(
                                      selector: (state) =>
                                          state.dashboardContainerModelObj,
                                      builder: (context,
                                          dashboardContainerModelObj) {
                                        return ListView.separated(
                                            padding: getPadding(
                                                left: 16, top: 27, right: 41),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  width: getHorizontalSize(16));
                                            },
                                            itemCount:
                                                dashboardContainerModelObj
                                                        ?.listiKillItemList
                                                        .length ??
                                                    0,
                                            itemBuilder: (context, index) {
                                              ListiKillItemModel model =
                                                  dashboardContainerModelObj
                                                              ?.listiKillItemList[
                                                          index] ??
                                                      ListiKillItemModel();
                                              return ListiKillItemWidget(model);
                                            });
                                      })),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 30),
                                      child: Text("lbl_upcoming_movies".tr,
                                          style: theme.textTheme.bodyMedium))),
                              SizedBox(
                                  height: getVerticalSize(209),
                                  child: BlocSelector<
                                          DashboardContainerBloc,
                                          DashboardContainerState,
                                          DashboardContainerModel?>(
                                      selector: (state) =>
                                          state.dashboardContainerModelObj,
                                      builder: (context,
                                          dashboardContainerModelObj) {
                                        return ListView.separated(
                                            padding: getPadding(
                                                left: 16, top: 24, right: 41),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  width: getHorizontalSize(16));
                                            },
                                            itemCount:
                                                dashboardContainerModelObj
                                                        ?.listlukasOneItemList
                                                        .length ??
                                                    0,
                                            itemBuilder: (context, index) {
                                              ListlukasOneItemModel model =
                                                  dashboardContainerModelObj
                                                              ?.listlukasOneItemList[
                                                          index] ??
                                                      ListlukasOneItemModel();
                                              return ListlukasOneItemWidget(
                                                  model);
                                            });
                                      })),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: getVerticalSize(42),
                                      child: BlocSelector<
                                              DashboardContainerBloc,
                                              DashboardContainerState,
                                              DashboardContainerModel?>(
                                          selector: (state) =>
                                              state.dashboardContainerModelObj,
                                          builder: (context,
                                              dashboardContainerModelObj) {
                                            return ListView.separated(
                                                padding: getPadding(
                                                    left: 16, top: 12),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      width: getHorizontalSize(
                                                          16));
                                                },
                                                itemCount:
                                                    dashboardContainerModelObj
                                                            ?.categoriesItemList
                                                            .length ??
                                                        0,
                                                itemBuilder: (context, index) {
                                                  CategoriesItemModel model =
                                                      dashboardContainerModelObj
                                                                  ?.categoriesItemList[
                                                              index] ??
                                                          CategoriesItemModel();
                                                  return CategoriesItemWidget(
                                                      model,
                                                      onTapImgDramaone: () {
                                                    onTapImgDramaone(context);
                                                  });
                                                });
                                          }))),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 14),
                                      child: Text("lbl_special_for_you".tr,
                                          style: theme.textTheme.bodyMedium))),
                              SizedBox(
                                  height: getVerticalSize(202),
                                  child: BlocSelector<
                                          DashboardContainerBloc,
                                          DashboardContainerState,
                                          DashboardContainerModel?>(
                                      selector: (state) =>
                                          state.dashboardContainerModelObj,
                                      builder: (context,
                                          dashboardContainerModelObj) {
                                        return ListView.separated(
                                            padding: getPadding(
                                                left: 16,
                                                top: 32,
                                                right: 41,
                                                bottom: 1),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  width: getHorizontalSize(16));
                                            },
                                            itemCount:
                                                dashboardContainerModelObj
                                                        ?.listItemList.length ??
                                                    0,
                                            itemBuilder: (context, index) {
                                              ListItemModel model =
                                                  dashboardContainerModelObj
                                                              ?.listItemList[
                                                          index] ??
                                                      ListItemModel();
                                              return ListItemWidget(model);
                                            });
                                      }))
                            ]))))));
  }

  /// Navigates to the seeMoreFiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the seeMoreFiveScreen.
  onTapImgDramaone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.seeMoreFiveScreen,
    );
  }
}
