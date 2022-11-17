



import '../entity/list_poke_entity.dart';
import '../repository/poke_repository.dart';
import 'get_all_poke_usecase.dart';

class GetAllPokeUseCaseImpl implements GetAllPokeUseCase{
  final PokeRepository repository;

  GetAllPokeUseCaseImpl({required this.repository});
  @override
  Future<ListPokeEntity> getAllPoke() async {

    return await repository.getAllPokemon();
  }
}