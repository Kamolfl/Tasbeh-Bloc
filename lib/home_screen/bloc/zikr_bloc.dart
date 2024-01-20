import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'zikr_event.dart';
part 'zikr_state.dart';

class ZikrBloc extends Bloc<ZikrEvent, ZikrState> {
  ZikrBloc() : super(ZikrInitial()) {
    int count = 0;
    on<ZikrEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<ZikrAddEvent>((event, emit) {
      count++;
      emit(ZikrAddState(count: count));
    });
    on<ZikrRefreshEvent>((event, emit) {
      count = 0;
      emit(ZikrRefreshState(count: count));
    });
  }
}
