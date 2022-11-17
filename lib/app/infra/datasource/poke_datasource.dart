
import 'package:pokeapiv3/app/domain/entity/detail_poke_entity.dart';
import 'package:pokeapiv3/app/domain/entity/list_poke_entity.dart';

abstract class PokeDataSource{
  Future<ListPokeEntity> getAllPokemon();
  Future<DetailPokeEntity> getPokeDetails({required String url});
}