import 'package:counter_cubit/screens/main_screen/cubit/main_screen_cubit.dart';
import 'package:counter_cubit/screens/main_screen/cubit/main_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Cubit'),
        centerTitle: true,
      ),
      body: BlocBuilder<MainScreenCubit, MainScreenState>(
        builder: (context, state){
          if(state is MainScreenUpdateCounterState)
            return Center(child: Text('${state.value}', style: Theme.of(context).textTheme.headline2));
          return Container();
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => BlocProvider.of<MainScreenCubit>(context).addValue(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => BlocProvider.of<MainScreenCubit>(context).removeValue(),
          ),
        ],
      ),
    );
  }
}
