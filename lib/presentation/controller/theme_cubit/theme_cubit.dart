import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_media_app/presentation/controller/theme_cubit/theme_state.dart';




class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  static ThemeCubit get(context) => BlocProvider.of(context);
  bool light0 = true;

  bool isDark = false;
  void changeThemeMode({bool? darkMode})async
  {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if(darkMode != null)
    {
      isDark = darkMode;
    }else{
      isDark = !isDark;
      sharedPreferences.setBool('isDark', isDark);
    }
    emit(ChangeAppThemeState());
  }
}
