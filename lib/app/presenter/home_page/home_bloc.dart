import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:pokeapiv3/app/domain/repository/poke_repository.dart';
import 'package:pokeapiv3/app/domain/usecases/get_all_poke_usecase.dart';
import 'package:pokeapiv3/app/domain/usecases/get_all_poke_usecase_impl.dart';
import 'package:pokeapiv3/app/external/datasource/poke_datasource_impl.dart';
import 'package:pokeapiv3/app/infra/datasource/poke_datasource.dart';
import 'package:pokeapiv3/app/infra/model/list_poke_model.dart';
import 'package:pokeapiv3/app/infra/repository/poke_repository_impl.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState().init()) {
    on<InitEvent>(_init);
  }
  late final  dio;
  late final PokeDataSource pokeDataSource;
 late final PokeRepository pokeRepository;
late final GetAllPokeUseCase getAllPokeUseCase;

  void _init(InitEvent event, Emitter<HomeState> emit) async {
    dio=Dio();
    pokeDataSource=PokeDataSourceImpl(dio: dio);
    pokeRepository=PokeRepositoryImpl(pokeDataSource);
    getAllPokeUseCase=GetAllPokeUseCaseImpl(repository: pokeRepository);
    emit(state.clone());
    var  data=await  getAllPokeUseCase.getAllPoke();
    if (data.results !=null) {
      emit(HomeStateSuccess(data));
    }

  }


}
