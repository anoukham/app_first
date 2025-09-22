import 'package:app_first/src/models/user.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<LoginEventAdd>((event, emit) async {
      await Future.delayed(Duration(seconds: 1));
      emit(state.copyyWith(count: state.count + 1));
    });
    on<LoginEventRemove>((event, emit) async {
      await Future.delayed(Duration(seconds: 1));
      emit(state.copyyWith(count: state.count - 1));
    });
    on<LoginEventLogin>((event, emit) async {
      if (event.payload.username == "admin" &&
          event.payload.password == "1234"){
          emit(state.copyyWith(isAuthenned: true));
          }else
      emit(state.copyyWith(isAuthenned: false));
    });
  }
}
