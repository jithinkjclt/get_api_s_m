import 'dart:convert';

import 'package:api_s_m/datas/lisofusers.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial()) {
    apiGet();
  }

  apiGet() async {
    String url = "https://reqres.in/api/users?page=2";

    final response = await http.get(Uri.parse(url));
    final res = jsonDecode(response.body);
    final data = ListofUsers.fromJson(res);
    emit(viewall(data: data));
  }
}
// first import the http and bloc package
//and create an function make it async      String url = "https://reqres.in/api/users?page=2";
// creta an variable and pass the api url
//create a varaiable and get the response         final response = await http.get(Uri.parse(url));
//cretae an variable and decode it          final res = jsonDecode(response.body);
// using the quicktype website convert the json(the response) to dart
// and give a class name in it and and trun on onlly  Null Safety and Make all properties optional
// and create a dart file and save the class
// create an object for the class  final data =ListofUsers .fromJson(res);
//then in state screen

// after
//  call emit inside the fuction and call the class and asigne the variable object   emit(viewall(data: data));

//                   Inistste
//  to make the function inistste change the  calss coulen to semmi calen and pass inside the semi callen call teh function
