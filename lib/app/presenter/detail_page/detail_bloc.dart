import 'package:bloc/bloc.dart';

import 'detail_event.dart';
import 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(DetailState().init()) {
    on<InitEvent>(_init);
  }

  void _init(InitEvent event, Emitter<DetailState> emit) async {
    emit(state.clone());
  }
}
