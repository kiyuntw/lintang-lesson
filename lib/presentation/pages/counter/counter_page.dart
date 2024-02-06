import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trinity_lecture_app/core/commons/assets_path.dart';
import 'package:trinity_lecture_app/presentation/pages/counter/counter_cubit.dart';
import 'package:trinity_lecture_app/presentation/pages/counter/counter_view.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}
