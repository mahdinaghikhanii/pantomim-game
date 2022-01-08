import 'package:rxdart/subjects.dart';

class BoolBloc {
  BehaviorSubject<bool> bloc = BehaviorSubject<bool>();
  Stream<bool> get stream => bloc.stream;
  bool get value => bloc.value;

  setValue(bool val) => bloc.add(val);
}
