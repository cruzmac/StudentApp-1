import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/simple/cubit/homepage_cubit.dart';
import 'package:flutter_application_1/simple/cubit/homepage_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is FirstState) {
          GoRouter.of(context).push(Uri(path: '/').toString());
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 400, left: 200),
            child: Container(
              color: Colors.black12,
              height: 100,
              width: 100,
              child: ElevatedButton(
                  onPressed: () {
                    final cubit = context.read<HomeCubit>();
                    cubit.previouspage();
                  },
                  child: Text('Done')),
            ),
          ),
        );
      },
    );
  }
}
