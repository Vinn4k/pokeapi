

import '../entity/detail_poke_entity.dart';

abstract class GetPokeDetailUseCase{

  Future<DetailPokeEntity> getPokeDetail({required String url});
}