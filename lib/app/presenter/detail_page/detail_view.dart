import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'detail_bloc.dart';
import 'detail_event.dart';
import 'detail_state.dart';

class DetailPage extends StatelessWidget {
  final String url;

  const DetailPage({super.key, required this.url});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DetailBloc()..add(InitEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<DetailBloc>(context);

    return Scaffold(
      appBar: AppBar(),
      body: const Center(
      ),
    );
  }
}

