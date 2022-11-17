
class ListPokeEntity{
final  num? count;
final  String? next;
final  String? previous;
 final List<Results>? results;

const ListPokeEntity({this.count, this.next, this.previous, this.results});



}

class Results {
  Results({
    this.name,
    this.url,});

 final String? name;
final  String? url;

}