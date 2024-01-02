import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
        create: (context) => AppNavigationBloc(
            AppNavigationState(appNavigationModelObj: AppNavigationModel()))
          ..add(AppNavigationInitialEvent()),
        child: AppNavigationScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
              body: SizedBox(
                  width: getHorizontalSize(375),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            decoration: AppDecoration.fillOnPrimary,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 20,
                                              top: 10,
                                              right: 20,
                                              bottom: 10),
                                          child: Text("lbl_app_navigation".tr,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: appTheme.black900,
                                                  fontSize: getFontSize(20),
                                                  fontFamily: 'Roboto',
                                                  fontWeight:
                                                      FontWeight.w400)))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(left: 20),
                                          child: Text("msg_check_your_app_s".tr,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: appTheme.blueGray400,
                                                  fontSize: getFontSize(16),
                                                  fontFamily: 'Roboto',
                                                  fontWeight:
                                                      FontWeight.w400)))),
                                  Padding(
                                      padding: getPadding(top: 5),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: appTheme.black900))
                                ])),
                        Expanded(
                            child: SingleChildScrollView(
                                child: Container(
                                    decoration: AppDecoration.fillOnPrimary,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapSplashscreen(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_splash_screen"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapDashboardContainer(
                                                    context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_dashboard_container"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapLogin(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_login2"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSeeMoreFive(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_see_more_five"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSeeMoreSix(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_see_more_six"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSeeMoreSeven(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_see_more_seven"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSeeMoreEight(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_see_more_eight"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapDetailPageSeven(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_detail_page_seven"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapDetailPageNine(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_detail_page_nine"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapDetailPageTen(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_detail_page_ten"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapDetailPageEleven(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_detail_page_eleven"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapDetailPageTwelve(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_detail_page_twelve"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapDetailPageEight(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_detail_page_eight"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapExploreSix(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_explore_six"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapExploreSeven(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_explore_seven"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapExploreTen(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_explore_ten"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapExploreNine(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_explore_nine"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapChannelFour(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_channel_four"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapChannelFive(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_channel_five"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSearchSevenTabContainer(
                                                    context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_search_seven_tab"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSearchTen(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_search_ten"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSearchSix(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_search_six"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSearchEight(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_search_eight"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSearchNine(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_search_nine"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blueGray400))
                                                      ])))
                                        ]))))
                      ]))));
    });
  }

  /// Navigates to the splashScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the splashScreen.
  onTapSplashscreen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.splashScreen,
    );
  }

  /// Navigates to the dashboardContainer1Screen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the dashboardContainer1Screen.
  onTapDashboardContainer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardContainer1Screen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the loginScreen.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the seeMoreFiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the seeMoreFiveScreen.
  onTapSeeMoreFive(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.seeMoreFiveScreen,
    );
  }

  /// Navigates to the seeMoreSixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the seeMoreSixScreen.
  onTapSeeMoreSix(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.seeMoreSixScreen,
    );
  }

  /// Navigates to the seeMoreSevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the seeMoreSevenScreen.
  onTapSeeMoreSeven(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.seeMoreSevenScreen,
    );
  }

  /// Navigates to the seeMoreEightScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the seeMoreEightScreen.
  onTapSeeMoreEight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.seeMoreEightScreen,
    );
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the detailPageSevenScreen.
  onTapDetailPageSeven(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the detailPageNineScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the detailPageNineScreen.
  onTapDetailPageNine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageNineScreen,
    );
  }

  /// Navigates to the detailPageTenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the detailPageTenScreen.
  onTapDetailPageTen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageTenScreen,
    );
  }

  /// Navigates to the detailPageElevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the detailPageElevenScreen.
  onTapDetailPageEleven(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageElevenScreen,
    );
  }

  /// Navigates to the detailPageTwelveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the detailPageTwelveScreen.
  onTapDetailPageTwelve(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageTwelveScreen,
    );
  }

  /// Navigates to the detailPageEightScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the detailPageEightScreen.
  onTapDetailPageEight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageEightScreen,
    );
  }

  /// Navigates to the exploreSixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the exploreSixScreen.
  onTapExploreSix(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exploreSixScreen,
    );
  }

  /// Navigates to the exploreSevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the exploreSevenScreen.
  onTapExploreSeven(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exploreSevenScreen,
    );
  }

  /// Navigates to the exploreTenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the exploreTenScreen.
  onTapExploreTen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exploreTenScreen,
    );
  }

  /// Navigates to the exploreNineScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the exploreNineScreen.
  onTapExploreNine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exploreNineScreen,
    );
  }

  /// Navigates to the channelFourScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the channelFourScreen.
  onTapChannelFour(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.channelFourScreen,
    );
  }

  /// Navigates to the channelFiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the channelFiveScreen.
  onTapChannelFive(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.channelFiveScreen,
    );
  }

  /// Navigates to the searchSevenTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the searchSevenTabContainerScreen.
  onTapSearchSevenTabContainer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchSevenTabContainerScreen,
    );
  }

  /// Navigates to the searchTenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the searchTenScreen.
  onTapSearchTen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchTenScreen,
    );
  }

  /// Navigates to the searchSixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the searchSixScreen.
  onTapSearchSix(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchSixScreen,
    );
  }

  /// Navigates to the searchEightScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the searchEightScreen.
  onTapSearchEight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchEightScreen,
    );
  }

  /// Navigates to the searchNineScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the searchNineScreen.
  onTapSearchNine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchNineScreen,
    );
  }
}
