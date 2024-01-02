import '../see_more_eight_screen/widgets/see_more_eight_item_widget.dart';
import 'bloc/see_more_eight_bloc.dart';
import 'models/see_more_eight_item_model.dart';
import 'models/see_more_eight_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/custom_app_bar.dart';

class SeeMoreEightScreen extends StatelessWidget {
  const SeeMoreEightScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SeeMoreEightBloc>(
        create: (context) => SeeMoreEightBloc(
            SeeMoreEightState(seeMoreEightModelObj: SeeMoreEightModel()))
          ..add(SeeMoreEightInitialEvent()),
        child: SeeMoreEightScreen());
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
                title: BlocSelector<SeeMoreEightBloc, SeeMoreEightState,
                        TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return AppbarSearchview(
                          margin: getMargin(left: 20),
                          hintText: "msg_search_in_action".tr,
                          controller: searchController);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 20, right: 15, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Opacity(
                          opacity: 0.87,
                          child: Padding(
                              padding: getPadding(left: 1),
                              child: Text("lbl_drama_movies".tr,
                                  style: theme.textTheme.headlineSmall))),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 1, top: 14),
                              child: BlocSelector<SeeMoreEightBloc,
                                      SeeMoreEightState, SeeMoreEightModel?>(
                                  selector: (state) =>
                                      state.seeMoreEightModelObj,
                                  builder: (context, seeMoreEightModelObj) {
                                    return GridView.builder(
                                        shrinkWrap: true,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                mainAxisExtent:
                                                    getVerticalSize(170),
                                                crossAxisCount: 3,
                                                mainAxisSpacing:
                                                    getHorizontalSize(16),
                                                crossAxisSpacing:
                                                    getHorizontalSize(16)),
                                        physics: BouncingScrollPhysics(),
                                        itemCount: seeMoreEightModelObj
                                                ?.seeMoreEightItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          SeeMoreEightItemModel model =
                                              seeMoreEightModelObj
                                                          ?.seeMoreEightItemList[
                                                      index] ??
                                                  SeeMoreEightItemModel();
                                          return SeeMoreEightItemWidget(model);
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
