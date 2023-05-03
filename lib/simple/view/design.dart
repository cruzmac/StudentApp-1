import 'package:flutter/material.dart';
import 'package:flutter_application_1/simple/cubit/homepage_cubit.dart';
import 'package:flutter_application_1/simple/cubit/homepage_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();
  String displayText = '';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listenWhen: (previous, current) => true,
      listener: (context, state) {
        if (state is SecondState) {
          GoRouter.of(context).push(Uri(path: '/thirdpage').toString());
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Error')));
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 300, left: 70),
            child: Container(
              height: 400,
              width: 300,
              color: Colors.black12,
              child: Column(
                children: [
                  TextFormField(
                    controller: textController1,
                    decoration: InputDecoration(
                      labelText: 'First Name',
                    ),
                  ),
                  TextFormField(
                    controller: textController2,
                    decoration: InputDecoration(
                      labelText: 'Second Name',
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          displayText = textController1.text;
                        });
                        final cubit = context.read<HomeCubit>();
                        cubit.nextpage();
                      },
                      child: Text('Done')),
                  Text('$displayText ${textController2.text}'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
