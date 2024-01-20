part of 'zikr_bloc.dart';

@immutable
abstract class ZikrState {}

class ZikrInitial extends ZikrState {}

// ignore: must_be_immutable
class ZikrAddState extends ZikrState {
  int count;
  ZikrAddState({required this.count});
}

// ignore: must_be_immutable
class ZikrRefreshState extends ZikrState {
  int count;
  ZikrRefreshState({required this.count});
}