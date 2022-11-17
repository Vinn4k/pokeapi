import '../../domain/entity/list_poke_entity.dart';
import '../../infra/model/list_poke_model.dart';

class HomeState {
  HomeState init() {
    return HomeState();
  }

  HomeState clone() {
    return HomeState();
  }
}

class HomeStateSuccess extends HomeState{
  final ListPokeEntity data;

  HomeStateSuccess(this.data);

}
class HomeStateError extends HomeState{
  final String message;

  HomeStateError(this.message);
}
class HomeStateFinalList extends HomeState{}
