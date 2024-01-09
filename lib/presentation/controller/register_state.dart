part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class ChangePasswordVisibilityState extends RegisterState {}
class ChangeDateTimeState extends RegisterState {}
