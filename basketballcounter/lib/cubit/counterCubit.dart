import 'package:bloc/bloc.dart';
import 'package:basketballcounter/cubit/counterState.dart';

class CounterCubit extends Cubit<counterState> {
  CounterCubit() : super(CounterAState());
  int counterTeamA = 0;
  int counterTeamB = 0;

  void TeamAIncrements(int buttonNum) {
    counterTeamA += buttonNum;
    emit(CounterAState());
  }

  void TeamBIncrements(int buttonNum) {
    counterTeamB += buttonNum;
    emit(CounterBState());
  }
}
