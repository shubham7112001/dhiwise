import '../search_nine_screen/widgets/search_nine_item_widget.dart';
import 'bloc/search_nine_bloc.dart';
import 'models/search_nine_item_model.dart';
import 'models/search_nine_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:shubham_tiwari_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:shubham_tiwari_s_application1/widgets/custom_search_view.dart';

class SearchNineScreen extends StatelessWidget {
  const SearchNineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchNineBloc>(
      create: (context) => SearchNineBloc(SearchNineState(
        searchNineModelObj: SearchNineModel(),
      ))
        ..add(SearchNineInitialEvent()),
      child: SearchNineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(53),
          title: AppbarTitle(
            text: "lbl_search".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarImage(
              svgPath: ImageConstant.imgAirplayicon,
              margin: getMargin(
                left: 19,
                top: 19,
                right: 17,
              ),
            ),
            AppbarImage(
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 26,
                top: 19,
                right: 36,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 14,
            right: 16,
            bottom: 14,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BlocSelector<SearchNineBloc, SearchNineState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "msg_search_for_movies".tr,
                    hintStyle: CustomTextStyles.bodySmall_1,
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 7,
                        right: 12,
                        bottom: 7,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearch,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(32),
                    ),
                    contentPadding: getPadding(
                      left: 16,
                      top: 8,
                      bottom: 8,
                    ),
                    borderDecoration: SearchViewStyleHelper.fillBlackDd,
                    filled: true,
                    fillColor: appTheme.black900Dd,
                  );
                },
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 3,
                    top: 48,
                  ),
                  child: BlocSelector<SearchNineBloc, SearchNineState,
                      SearchNineModel?>(
                    selector: (state) => state.searchNineModelObj,
                    builder: (context, searchNineModelObj) {
                      return GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(170),
                          crossAxisCount: 3,
                          mainAxisSpacing: getHorizontalSize(14),
                          crossAxisSpacing: getHorizontalSize(14),
                        ),
                        physics: BouncingScrollPhysics(),
                        itemCount:
                            searchNineModelObj?.searchNineItemList.length ?? 0,
                        itemBuilder: (context, index) {
                          SearchNineItemModel model =
                              searchNineModelObj?.searchNineItemList[index] ??
                                  SearchNineItemModel();
                          return SearchNineItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
