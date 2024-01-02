import '../explore_seven_screen/widgets/listaction_item_widget.dart';
import '../explore_seven_screen/widgets/listio_one1_item_widget.dart';
import '../explore_seven_screen/widgets/listtitle_one1_item_widget.dart';
import 'bloc/explore_seven_bloc.dart';
import 'models/explore_seven_model.dart';
import 'models/listaction_item_model.dart';
import 'models/listio_one1_item_model.dart';
import 'models/listtitle_one1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/custom_app_bar.dart';

class ExploreSevenScreen extends StatelessWidget {
  const ExploreSevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreSevenBloc>(
      create: (context) => ExploreSevenBloc(ExploreSevenState(
        exploreSevenModelObj: ExploreSevenModel(),
      ))
        ..add(ExploreSevenInitialEvent()),
      child: ExploreSevenScreen(),
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
            text: "lbl_explore".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarImage(
              svgPath: ImageConstant.imgTrophy,
              margin: getMargin(
                left: 18,
                top: 18,
                right: 19,
              ),
            ),
            AppbarImage(
              svgPath: ImageConstant.imgLock,
              margin: getMargin(
                left: 24,
                top: 18,
                right: 37,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 11,
            ),
            child: Padding(
              padding: getPadding(
                left: 12,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.87,
                    child: Text(
                      "msg_categories_you_like".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      top: 25,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: getVerticalSize(94),
                            width: getHorizontalSize(89),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgThumbnailimage94x89,
                                  height: getVerticalSize(94),
                                  width: getHorizontalSize(89),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Opacity(
                                    opacity: 0.87,
                                    child: Text(
                                      "lbl_thriller".tr,
                                      style: CustomTextStyles.bodyMedium_2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(94),
                            width: getHorizontalSize(89),
                            margin: getMargin(
                              left: 9,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbnailimage30,
                                  height: getVerticalSize(94),
                                  width: getHorizontalSize(89),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Opacity(
                                    opacity: 0.87,
                                    child: Text(
                                      "lbl_action".tr,
                                      style: CustomTextStyles.bodyMedium_2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(94),
                            width: getHorizontalSize(89),
                            margin: getMargin(
                              left: 9,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbnailimage31,
                                  height: getVerticalSize(94),
                                  width: getHorizontalSize(89),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Opacity(
                                    opacity: 0.87,
                                    child: Text(
                                      "lbl_drama".tr,
                                      style: CustomTextStyles.bodyMedium_2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(94),
                            width: getHorizontalSize(89),
                            margin: getMargin(
                              left: 9,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbnailimage32,
                                  height: getVerticalSize(94),
                                  width: getHorizontalSize(89),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Opacity(
                                    opacity: 0.87,
                                    child: Text(
                                      "lbl_label".tr,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodyMedium_2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 25,
                      right: 20,
                    ),
                    child: Row(
                      children: [
                        Opacity(
                          opacity: 0.87,
                          child: Padding(
                            padding: getPadding(
                              bottom: 2,
                            ),
                            child: Text(
                              "lbl_drama".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        Spacer(),
                        Opacity(
                          opacity: 0.87,
                          child: Padding(
                            padding: getPadding(
                              bottom: 3,
                            ),
                            child: Text(
                              "lbl_more".tr,
                              style: CustomTextStyles.bodySmallOnPrimary,
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: getSize(18),
                          width: getSize(18),
                          margin: getMargin(
                            left: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: getVerticalSize(199),
                      child: BlocSelector<ExploreSevenBloc, ExploreSevenState,
                          ExploreSevenModel?>(
                        selector: (state) => state.exploreSevenModelObj,
                        builder: (context, exploreSevenModelObj) {
                          return ListView.separated(
                            padding: getPadding(
                              top: 25,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                width: getHorizontalSize(16),
                              );
                            },
                            itemCount: exploreSevenModelObj
                                    ?.listioOne1ItemList.length ??
                                0,
                            itemBuilder: (context, index) {
                              ListioOne1ItemModel model = exploreSevenModelObj
                                      ?.listioOne1ItemList[index] ??
                                  ListioOne1ItemModel();
                              return ListioOne1ItemWidget(
                                model,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: getVerticalSize(170),
                      child: BlocSelector<ExploreSevenBloc, ExploreSevenState,
                          ExploreSevenModel?>(
                        selector: (state) => state.exploreSevenModelObj,
                        builder: (context, exploreSevenModelObj) {
                          return ListView.separated(
                            padding: getPadding(
                              top: 11,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                width: getHorizontalSize(16),
                              );
                            },
                            itemCount: exploreSevenModelObj
                                    ?.listtitleOne1ItemList.length ??
                                0,
                            itemBuilder: (context, index) {
                              ListtitleOne1ItemModel model =
                                  exploreSevenModelObj
                                          ?.listtitleOne1ItemList[index] ??
                                      ListtitleOne1ItemModel();
                              return ListtitleOne1ItemWidget(
                                model,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 40,
                    ),
                    child: BlocSelector<ExploreSevenBloc, ExploreSevenState,
                        ExploreSevenModel?>(
                      selector: (state) => state.exploreSevenModelObj,
                      builder: (context, exploreSevenModelObj) {
                        return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              height: getVerticalSize(21),
                            );
                          },
                          itemCount:
                              exploreSevenModelObj?.listactionItemList.length ??
                                  0,
                          itemBuilder: (context, index) {
                            ListactionItemModel model = exploreSevenModelObj
                                    ?.listactionItemList[index] ??
                                ListactionItemModel();
                            return ListactionItemWidget(
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
