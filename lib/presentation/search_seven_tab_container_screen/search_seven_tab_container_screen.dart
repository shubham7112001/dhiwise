import '../search_seven_tab_container_screen/widgets/gridghost_item_widget.dart';
import 'bloc/search_seven_tab_container_bloc.dart';
import 'models/gridghost_item_model.dart';
import 'models/search_seven_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/presentation/search_seven_page/search_seven_page.dart';
import 'package:shubham_tiwari_s_application1/widgets/custom_text_form_field.dart';

class SearchSevenTabContainerScreen extends StatefulWidget {
  const SearchSevenTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchSevenTabContainerScreenState createState() =>
      SearchSevenTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchSevenTabContainerBloc>(
      create: (context) =>
          SearchSevenTabContainerBloc(SearchSevenTabContainerState(
        searchSevenTabContainerModelObj: SearchSevenTabContainerModel(),
      ))
            ..add(SearchSevenTabContainerInitialEvent()),
      child: SearchSevenTabContainerScreen(),
    );
  }
}

class SearchSevenTabContainerScreenState
    extends State<SearchSevenTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BlocSelector<SearchSevenTabContainerBloc,
                    SearchSevenTabContainerState, TextEditingController?>(
                  selector: (state) => state.searchboxoneController,
                  builder: (context, searchboxoneController) {
                    return CustomTextFormField(
                      controller: searchboxoneController,
                      margin: getMargin(
                        left: 16,
                        right: 16,
                      ),
                      hintText: "lbl_love".tr,
                      hintStyle: CustomTextStyles.bodySmall_1,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                      suffix: Container(
                        margin: getMargin(
                          left: 30,
                          top: 7,
                          right: 12,
                          bottom: 7,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgClose,
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
                      borderDecoration: TextFormFieldStyleHelper.fillBlackDd,
                      fillColor: appTheme.black900Dd,
                    );
                  },
                ),
                Opacity(
                  opacity: 0.87,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 34,
                    ),
                    child: Text(
                      "msg_search_result_for".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.87,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 23,
                    ),
                    child: Text(
                      "lbl_movies_6".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 15,
                      top: 24,
                      right: 15,
                    ),
                    child: BlocSelector<
                        SearchSevenTabContainerBloc,
                        SearchSevenTabContainerState,
                        SearchSevenTabContainerModel?>(
                      selector: (state) =>
                          state.searchSevenTabContainerModelObj,
                      builder: (context, searchSevenTabContainerModelObj) {
                        return GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(170),
                            crossAxisCount: 3,
                            mainAxisSpacing: getHorizontalSize(16),
                            crossAxisSpacing: getHorizontalSize(16),
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: searchSevenTabContainerModelObj
                                  ?.gridghostItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            GridghostItemModel model =
                                searchSevenTabContainerModelObj
                                        ?.gridghostItemList[index] ??
                                    GridghostItemModel();
                            return GridghostItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.87,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 25,
                    ),
                    child: Text(
                      "lbl_cast_4".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(32),
                  width: getHorizontalSize(317),
                  margin: getMargin(
                    left: 16,
                    top: 24,
                  ),
                  child: TabBar(
                    controller: tabviewController,
                    isScrollable: true,
                    tabs: [
                      Tab(
                        child: Opacity(
                          opacity: 0.87,
                          child: Text(
                            "lbl_mark_love".tr,
                          ),
                        ),
                      ),
                      Tab(
                        child: Opacity(
                          opacity: 0.87,
                          child: Text(
                            "lbl_jennifer_love".tr,
                          ),
                        ),
                      ),
                      Tab(
                        child: Opacity(
                          opacity: 0.87,
                          child: Text(
                            "lbl_mislove".tr,
                          ),
                        ),
                      ),
                      Tab(
                        child: Opacity(
                          opacity: 0.87,
                          child: Text(
                            "lbl_lovez".tr,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(238),
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      SearchSevenPage.builder(context),
                      SearchSevenPage.builder(context),
                      SearchSevenPage.builder(context),
                      SearchSevenPage.builder(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
