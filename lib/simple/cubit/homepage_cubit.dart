import 'package:flutter_application_1/simple/cubit/homepage_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(FirstState());
  void nextpage() {
    emit(SecondState());
  }

  void previouspage() {
    emit(FirstState());
  }
}
