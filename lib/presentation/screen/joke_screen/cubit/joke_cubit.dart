import 'package:bloc/bloc.dart';
import 'joke_state.dart';

class JokeCubit extends Cubit<JokeState> {
  JokeCubit() : super(JokeInitial());
}
