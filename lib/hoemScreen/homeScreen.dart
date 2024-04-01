import 'package:api_s_m/hoemScreen/home_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class hoemScreen extends StatelessWidget {
  const hoemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => HomeCubit(),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is viewall) {
              return ListView.builder(
                itemCount: state.data.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      tileColor: Colors.yellow,
                      trailing: Column(
                        children: [
                          Text(state.data.data![index].id.toString()),
                          Text(state.data.data![index].email!),

                        ],
                      ),
                      subtitle: Text(state.data.data![index].lastName!),
                      leading: Container(
                        width: 50,

                        child: Image(
                            image: NetworkImage(state.data.data![index].avatar!)),
                      ),
                      title: Text(state.data.data![index]!.firstName!));
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}

//wrap with blocbuilder
//wrap with blocprovider
//
// insidee the blocbuilder after the builder check the condition  if (state is viewall) return   ListView.builder

// to call lengthitemCount: state.data.data!.length,
// to call data state.data.data![index]!.firstName!

//else CircularProgressIndicator
