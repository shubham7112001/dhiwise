// ignore_for_file: must_be_immutable

part of 'search_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchTenEvent extends Equatable {}

/// Event that is dispatched when the SearchTen widget is first created.
class SearchTenInitialEvent extends SearchTenEvent {
  @override
  List<Object?> get props => [];
}
