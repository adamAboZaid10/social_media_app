
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  static RegisterCubit get(context) => BlocProvider.of(context);

  bool obscureText = true;
  IconData suffix = Icons.visibility_outlined;

  DateTime dateTime = DateTime(2024,1,1);

  void changePasswordVisibility() {
    obscureText = !obscureText;
    suffix =
    obscureText ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ChangePasswordVisibilityState());
  }

  void customDateTime(DateTime newTime)
  {
    dateTime = newTime;
    emit(ChangeDateTimeState());
  }



}
