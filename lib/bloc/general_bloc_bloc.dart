import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:graduitproject/diohellper.dart';
import 'package:graduitproject/model/user_info_model.dart';

part 'general_bloc_event.dart';
part 'general_bloc_state.dart';

class GeneralBlocBloc extends Bloc<GeneralBlocEvent, GeneralBlocState> {
  GeneralBlocBloc() : super(LoodingState()) {
    on<GeneralBlocEvent>((event, emit) async {
      if (event is GetUserEvent) {
        emit(LoodingState());
        try {
          final userInfo = await DioHelper.GetUserInfo(url: 'users/profile');
          print(userInfo);
          emit(LoodedState(userInfo));
        } catch (e) {
          emit(ErrorState(e.toString()));
        }
      }
    });
  }
}
