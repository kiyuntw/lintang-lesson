import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trinity_lecture_app/core/commons/assets_path.dart';
import 'package:trinity_lecture_app/presentation/pages/counter/counter_cubit.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    const double sectionPadding = 20;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Center(child: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Text(
            '$state',
            style: textTheme.displayMedium,
          );
        },
      )),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            child: const Icon(Icons.add),
          ),
          UIHelper.verticalSpace(sectionPadding),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
