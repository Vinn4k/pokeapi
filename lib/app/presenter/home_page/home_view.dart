import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokeapiv3/app/presenter/detail_page/detail_view.dart';

import 'home_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeBloc()..add(InitEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<HomeBloc>(context);

    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
          bloc: BlocProvider.of<HomeBloc>(context),
          builder: (context, state) {
            if (state is HomeStateSuccess) {
              return ListView.builder(
                  itemCount: state.data.results!.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  DetailPage(url: state.data.results![index].url!,)),
                          );
                        },
                        child: Column(
                          children: [
                            Text("Nome:${state.data.results![index].name!}"),
                            Text("Número:${state.data.results![index].url!}"),
                          ],
                        ),
                      )
                    );
                  });
            }

            if (state is HomeStateError) {
              return Center(
                child: Text(state.message),
              );
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
