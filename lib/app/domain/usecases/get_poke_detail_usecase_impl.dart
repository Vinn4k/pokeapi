



import '../entity/detail_poke_entity.dart';
import '../repository/poke_repository.dart';
import 'get_poke_details_usecase.dart';

class GetPokeDetailUseCaseImpl  implements GetPokeDetailUseCase{
  final PokeRepository repository;

  GetPokeDetailUseCaseImpl({required this.repository});
  @override
  Future<DetailPokeEntity> getPokeDetail({required String url})async {

    return await repository.getPokeDetail(url: url);
  }
}