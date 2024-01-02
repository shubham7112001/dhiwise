// ignore_for_file: must_be_immutable

part of 'dashboard_container1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DashboardContainer1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DashboardContainer1Event extends Equatable {}

/// Event that is dispatched when the DashboardContainer1 widget is first created.
class DashboardContainer1InitialEvent extends DashboardContainer1Event {
  @override
  List<Object?> get props => [];
}
