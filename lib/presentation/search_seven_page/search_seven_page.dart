import 'bloc/search_seven_bloc.dart';
import 'models/search_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SearchSevenPage extends StatefulWidget {
  const SearchSevenPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchSevenPageState createState() => SearchSevenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchSevenBloc>(
      create: (context) => SearchSevenBloc(SearchSevenState(
        searchSevenModelObj: SearchSevenModel(),
      ))
        ..add(SearchSevenInitialEvent()),
      child: SearchSevenPage(),
    );
  }
}

class SearchSevenPageState extends State<SearchSevenPage>
    with AutomaticKeepAliveClientMixin<SearchSevenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SearchSevenBloc, SearchSevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray90001,
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 16,
                          top: 30,
                          right: 252,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Opacity(
                              opacity: 0.87,
                              child: Text(
                                "lbl_categories_1".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            Container(
                              height: getSize(90),
                              width: getSize(90),
                              margin: getMargin(
                                top: 16,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgThumbnailimage90x90,
                                    height: getSize(90),
                                    width: getSize(90),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(2),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomElevatedButton(
                                    height: getVerticalSize(90),
                                    width: getHorizontalSize(90),
                                    text: "lbl_love".tr,
                                    buttonStyle: CustomButtonStyles.fillGray,
                                    buttonTextStyle:
                                        CustomTextStyles.bodyMedium_2,
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
