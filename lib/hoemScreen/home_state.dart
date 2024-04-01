part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

class viewall extends HomeState {
  final ListofUsers data;

  viewall({required this.data});
}




// crate an class and extend with state  class viewall extends HomeState
//and inside the class create a variable for the model  final ListofUsers data;
// and inside the class make the variable requird    viewall({required this.data});
