import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/styles/color_theme.dart';
import '../controller/register_cubit.dart';

class ShowDatePickerCustom extends StatelessWidget {
  ShowDatePickerCustom({super.key,});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit,RegisterState>(
        builder: (context,state)
        {
          var cubit = RegisterCubit.get(context);
          return  SizedBox(
            height: 250,
            child: CupertinoDatePicker(
              backgroundColor: defaultDatePickerColor,
              initialDateTime: cubit.dateTime,

              onDateTimeChanged: (DateTime newTime) {
                cubit.customDateTime(newTime);
              },
              mode: CupertinoDatePickerMode.date,
            ),
          );
        }
    );
  }
}

