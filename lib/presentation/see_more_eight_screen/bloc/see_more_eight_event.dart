// ignore_for_file: must_be_immutable

part of 'see_more_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SeeMoreEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeeMoreEightEvent extends Equatable {}

/// Event that is dispatched when the SeeMoreEight widget is first created.
class SeeMoreEightInitialEvent extends SeeMoreEightEvent {
  @override
  List<Object?> get props => [];
}
