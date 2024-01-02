import 'bloc/dashboard_container1_bloc.dart';
import 'models/dashboard_container1_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/presentation/account_five_page/account_five_page.dart';
import 'package:shubham_tiwari_s_application1/presentation/channel_six_page/channel_six_page.dart';
import 'package:shubham_tiwari_s_application1/presentation/dashboard_container_page/dashboard_container_page.dart';
import 'package:shubham_tiwari_s_application1/presentation/explore_eight_page/explore_eight_page.dart';
import 'package:shubham_tiwari_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class DashboardContainer1Screen extends StatelessWidget {
  DashboardContainer1Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardContainer1Bloc>(
        create: (context) => DashboardContainer1Bloc(DashboardContainer1State(
            dashboardContainer1ModelObj: DashboardContainer1Model()))
          ..add(DashboardContainer1InitialEvent()),
        child: DashboardContainer1Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<DashboardContainer1Bloc, DashboardContainer1State>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray90001,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.dashboardContainerPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardContainerPage;
      case BottomBarEnum.Explore:
        return AppRoutes.exploreEightPage;
      case BottomBarEnum.Channels:
        return AppRoutes.channelSixPage;
      case BottomBarEnum.User:
        return AppRoutes.accountFivePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.dashboardContainerPage:
        return DashboardContainerPage.builder(context);
      case AppRoutes.exploreEightPage:
        return ExploreEightPage.builder(context);
      case AppRoutes.channelSixPage:
        return ChannelSixPage.builder(context);
      case AppRoutes.accountFivePage:
        return AccountFivePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
