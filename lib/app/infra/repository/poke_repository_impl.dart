import '../../domain/entity/detail_poke_entity.dart';
import '../../domain/entity/list_poke_entity.dart';
import '../../domain/repository/poke_repository.dart';
import '../datasource/poke_datasource.dart';

class PokeRepositoryImpl implements PokeRepository {
  final PokeDataSource pokeDataSource;

  PokeRepositoryImpl(this.pokeDataSource);

  @override
  Future<ListPokeEntity> getAllPokemon() async {
    return await pokeDataSource.getAllPokemon();
  }

  @override
  Future<DetailPokeEntity> getPokeDetail({required String url}) async {
    return await pokeDataSource.getPokeDetails(url: url);
  }
}
