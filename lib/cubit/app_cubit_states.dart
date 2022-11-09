import 'package:equatable/equatable.dart';
import 'package:medicalapp/model/data_model.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  List<Object> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  List<Object> get props => [];
}

class LoadingState extends CubitStates {
  @override
  List<Object> get props => [];
}

class LoadedState extends CubitStates {
  final List<DataModel> data;

  LoadedState(this.data);

  @override
  List<Object> get props => [data];
}

class DetailState extends CubitStates {
  final DataModel data;

  DetailState(this.data);

  @override
  List<Object> get props => [data];
}
