import 'package:pokeapiv3/app/domain/entity/list_poke_entity.dart';

class ListPokeModel  extends ListPokeEntity{
  ListPokeModel({
      this.count,
      this.next,
      this.previous,
      this.results,});

  ListPokeModel.fromJson(dynamic json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(ResultsModel.fromJson(v));
      });
    }
  }
  num? count;
  String? next;
  String? previous;
  List<ResultsModel>? results;
ListPokeModel copyWith({  num? count,
  String? next,
  String? previous,
  List<ResultsModel>? results,
}) => ListPokeModel(  count: count ?? this.count,
  next: next ?? this.next,
  previous: previous ?? this.previous,
  results: results ?? this.results,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['next'] = next;
    map['previous'] = previous;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class ResultsModel extends Results {
  ResultsModel({
      this.name, 
      this.url,});

  ResultsModel.fromJson(dynamic json) {
    name = json['name'];
    url = json['url'];
  }
  String? name;
  String? url;
ResultsModel copyWith({  String? name,
  String? url,
}) => ResultsModel(  name: name ?? this.name,
  url: url ?? this.url,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['url'] = url;
    return map;
  }

}