import 'package:flutter/material.dart';
import 'package:flutter_application_1/route_config.dart';
import 'package:flutter_application_1/simple/cubit/homepage_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: ((context) => HomeCubit()),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily:
              GoogleFonts.montserrat(fontWeight: FontWeight.w600).fontFamily,
        ),
        routeInformationParser:
            AttendanceRouter.returnRouter(false).routeInformationParser,
        routerDelegate: AttendanceRouter.returnRouter(false).routerDelegate,
      ),
    );
  }
}
