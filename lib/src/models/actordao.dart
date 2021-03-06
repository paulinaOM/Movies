// Generated by https://quicktype.io

class ActorDAO {
  int id;
  String name;
  String originalName;
  double popularity;
  String profilePath;
  int castId;
  String character;
  String creditId;
  int order;

  ActorDAO({
    this.id,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.castId,
    this.character,
    this.creditId,
    this.order,
  });

  factory ActorDAO.fromJSON(Map<String, dynamic> map){ //Recibe json convertido a mapa
    return ActorDAO(
      name: map['name'],
      id: map['id'] ,
      originalName: map['original_name'],
      profilePath: map['profile_path'],
      castId: map['cast_id'],
      popularity: map['popularity'],
      character: map['character'],
      creditId: map['credit_id'],
      order: map['order'],
    );
  }
}
