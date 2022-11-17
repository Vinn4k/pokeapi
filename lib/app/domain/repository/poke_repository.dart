

import '../entity/detail_poke_entity.dart';
import '../entity/list_poke_entity.dart';

abstract class PokeRepository{

  Future<ListPokeEntity> getAllPokemon();
  Future<DetailPokeEntity> getPokeDetail({required String url});


}