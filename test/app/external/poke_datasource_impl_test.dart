
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokeapiv3/app/external/datasource/poke_datasource_impl.dart';
import 'package:pokeapiv3/app/infra/datasource/poke_datasource.dart';
import 'package:pokeapiv3/app/infra/model/list_poke_model.dart';



class DioMock extends Mock implements Dio {}


//inicia main para buscar dados
main() {
  var dio = DioMock();
   PokeDataSource dataSource = PokeDataSourceImpl(dio:dio);


  test('deve retornar um ListPoke Model', () async {
    when(dio.get("any")).thenAnswer((_) async => httpResponse);

    var result = await dataSource.getAllPokemon();
    expect(result, isA<List<ListPokeModel>>());
  });


}
var jsonResponse = r'''{
  "count": 1154,
  "next": "https://pokeapi.co/api/v2/pokemon?offset=40&limit=20",
  "previous": "https://pokeapi.co/api/v2/pokemon?offset=0&limit=20",
  "results": [
    {
      "name": "spearow",
      "url": "https://pokeapi.co/api/v2/pokemon/21/"
    },
    {
      "name": "fearow",
      "url": "https://pokeapi.co/api/v2/pokemon/22/"
    },
    {
      "name": "ekans",
      "url": "https://pokeapi.co/api/v2/pokemon/23/"
    },
    {
      "name": "arbok",
      "url": "https://pokeapi.co/api/v2/pokemon/24/"
    
    }
  ]
}''';