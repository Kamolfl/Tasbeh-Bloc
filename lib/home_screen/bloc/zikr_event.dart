part of 'zikr_bloc.dart';

@immutable
abstract class ZikrEvent {}

class ZikrAddEvent extends ZikrEvent {}

class ZikrRefreshEvent extends ZikrEvent {}