import 'package:counter_cubit/screens/main_screen/cubit/main_screen_cubit.dart';
import 'package:counter_cubit/screens/main_screen/man_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreenProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainScreenCubit(),
      child: MainScreen(),
    );
  }
}
