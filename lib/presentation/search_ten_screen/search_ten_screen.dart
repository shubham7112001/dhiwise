import '../search_ten_screen/widgets/populars_item_widget.dart';
import 'bloc/search_ten_bloc.dart';
import 'models/populars_item_model.dart';
import 'models/search_ten_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/custom_search_view.dart';

class SearchTenScreen extends StatelessWidget {
  const SearchTenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchTenBloc>(
      create: (context) => SearchTenBloc(SearchTenState(
        searchTenModelObj: SearchTenModel(),
      ))
        ..add(SearchTenInitialEvent()),
      child: SearchTenScreen(),
    );
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
            padding: getPadding(
              top: 12,
            ),
            child: Padding(
              padding: getPadding(
                left: 15,
                right: 15,
                bottom: 150,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BlocSelector<SearchTenBloc, SearchTenState,
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
                  Padding(
                    padding: getPadding(
                      top: 37,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgCursor,
                          height: getVerticalSize(10),
                          width: getHorizontalSize(18),
                          margin: getMargin(
                            top: 5,
                            bottom: 12,
                          ),
                        ),
                        Opacity(
                          opacity: 0.87,
                          child: Padding(
                            padding: getPadding(
                              left: 8,
                            ),
                            child: Text(
                              "lbl_trending_search".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Opacity(
                    opacity: 0.87,
                    child: Padding(
                      padding: getPadding(
                        top: 11,
                      ),
                      child: Text(
                        "lbl_love_in_trouble".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.87,
                    child: Padding(
                      padding: getPadding(
                        top: 19,
                      ),
                      child: Text(
                        "lbl_hotel_de_luna".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.87,
                    child: Padding(
                      padding: getPadding(
                        top: 19,
                      ),
                      child: Text(
                        "lbl_the_heirs".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.87,
                    child: Padding(
                      padding: getPadding(
                        top: 20,
                      ),
                      child: Text(
                        "msg_what_s_wrong_with".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 33,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgGlobe,
                          height: getSize(18),
                          width: getSize(18),
                          margin: getMargin(
                            top: 2,
                            bottom: 8,
                          ),
                        ),
                        Opacity(
                          opacity: 0.87,
                          child: Padding(
                            padding: getPadding(
                              left: 8,
                            ),
                            child: Text(
                              "lbl_popular_search".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(180),
                    child: BlocSelector<SearchTenBloc, SearchTenState,
                        SearchTenModel?>(
                      selector: (state) => state.searchTenModelObj,
                      builder: (context, searchTenModelObj) {
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
                          itemCount:
                              searchTenModelObj?.popularsItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            PopularsItemModel model =
                                searchTenModelObj?.popularsItemList[index] ??
                                    PopularsItemModel();
                            return PopularsItemWidget(
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
