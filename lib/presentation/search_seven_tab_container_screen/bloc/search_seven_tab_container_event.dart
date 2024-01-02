// ignore_for_file: must_be_immutable

part of 'search_seven_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchSevenTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchSevenTabContainerEvent extends Equatable {}

/// Event that is dispatched when the SearchSevenTabContainer widget is first created.
class SearchSevenTabContainerInitialEvent extends SearchSevenTabContainerEvent {
  @override
  List<Object?> get props => [];
}
