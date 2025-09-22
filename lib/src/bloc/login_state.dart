part of 'login_bloc.dart';

class LoginState extends Equatable {
  final int count;
  final bool isAuthened;

  const LoginState({
    this.count = 0,
    this.isAuthened = false,
    });

  LoginState copyyWith({
    int? count,
    bool? isAuthenned,
    }) {
    return LoginState(
      count: count?? this.count, 
    isAuthened: isAuthened ?? this.isAuthened,
    );
  }
  
  @override
  List<Object?> get props => [count, isAuthened];
  
}