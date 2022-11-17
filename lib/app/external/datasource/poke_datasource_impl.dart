



import 'package:dio/dio.dart';

import '../../domain/entity/detail_poke_entity.dart';
import '../../infra/datasource/poke_datasource.dart';
import '../../infra/model/list_poke_model.dart';

class PokeDataSourceImpl implements PokeDataSource{
final Dio dio;

  PokeDataSourceImpl({required this.dio});

  @override
  Future<ListPokeModel> getAllPokemon() async{
    var result = await dio.get(
        "https://pokeapi.co/api/v2/pokemon");
    if (result.statusCode == 200) {
      var json = result.data as Map<String,dynamic>;

     return ListPokeModel.fromJson(json);

    }else{
      throw Exception("Error Ao Busacar Dados");
    }
  }

  @override
  Future<DetailPokeEntity> getPokeDetails({required String url})async {
    var result = await dio.get(
        "https://pokeapi.co/api/v2/pokemon");
    if (result.statusCode == 200) {
      var json = result.data as Map<String,dynamic>;

      return ListPokeModel.fromJson(json);

    }else{
      throw Exception("Error Ao Busacar Dados");
    }
  }
}