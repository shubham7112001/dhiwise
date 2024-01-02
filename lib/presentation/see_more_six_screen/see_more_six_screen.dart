import '../see_more_six_screen/widgets/see_more_six_item_widget.dart';
import 'bloc/see_more_six_bloc.dart';
import 'models/see_more_six_item_model.dart';
import 'models/see_more_six_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/custom_app_bar.dart';

class SeeMoreSixScreen extends StatelessWidget {
  const SeeMoreSixScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SeeMoreSixBloc>(
        create: (context) => SeeMoreSixBloc(
            SeeMoreSixState(seeMoreSixModelObj: SeeMoreSixModel()))
          ..add(SeeMoreSixInitialEvent()),
        child: SeeMoreSixScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray90001,
            appBar: CustomAppBar(
                height: getVerticalSize(54),
                leadingWidth: getHorizontalSize(40),
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 16, bottom: 14),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_action".tr, margin: getMargin(left: 8)),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgTrophy,
                      margin: getMargin(left: 18, top: 19, right: 17)),
                  AppbarImage(
                      svgPath: ImageConstant.imgLock,
                      margin: getMargin(left: 24, top: 19, right: 35))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 14, right: 15, bottom: 14),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Opacity(
                          opacity: 0.87,
                          child: Padding(
                              padding: getPadding(left: 1),
                              child: Text("lbl_action_movies".tr,
                                  style: theme.textTheme.headlineSmall))),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 1, top: 14),
                              child: BlocSelector<SeeMoreSixBloc,
                                      SeeMoreSixState, SeeMoreSixModel?>(
                                  selector: (state) => state.seeMoreSixModelObj,
                                  builder: (context, seeMoreSixModelObj) {
                                    return GridView.builder(
                                        shrinkWrap: true,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                mainAxisExtent:
                                                    getVerticalSize(176),
                                                crossAxisCount: 3,
                                                mainAxisSpacing:
                                                    getHorizontalSize(16),
                                                crossAxisSpacing:
                                                    getHorizontalSize(16)),
                                        physics: BouncingScrollPhysics(),
                                        itemCount: seeMoreSixModelObj
                                                ?.seeMoreSixItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          SeeMoreSixItemModel model =
                                              seeMoreSixModelObj
                                                          ?.seeMoreSixItemList[
                                                      index] ??
                                                  SeeMoreSixItemModel();
                                          return SeeMoreSixItemWidget(model);
                                        });
                                  })))
                    ]))));
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
