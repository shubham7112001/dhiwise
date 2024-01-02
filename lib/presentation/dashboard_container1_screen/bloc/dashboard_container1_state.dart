// ignore_for_file: must_be_immutable

part of 'dashboard_container1_bloc.dart';

/// Represents the state of DashboardContainer1 in the application.
class DashboardContainer1State extends Equatable {
  DashboardContainer1State({this.dashboardContainer1ModelObj});

  DashboardContainer1Model? dashboardContainer1ModelObj;

  @override
  List<Object?> get props => [
        dashboardContainer1ModelObj,
      ];
  DashboardContainer1State copyWith(
      {DashboardContainer1Model? dashboardContainer1ModelObj}) {
    return DashboardContainer1State(
      dashboardContainer1ModelObj:
          dashboardContainer1ModelObj ?? this.dashboardContainer1ModelObj,
    );
  }
}
