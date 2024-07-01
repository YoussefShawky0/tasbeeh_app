import 'package:bloc/bloc.dart';
import 'package:tasbeeh_app/cubit/tasbeeh_states.dart';




class TasbeehCubit extends Cubit<TasbeehStates> {
  TasbeehCubit() : super(TasbeehDefault());


  void changeImage() {
    emit(TasbeehChangingImage());
  }
}
