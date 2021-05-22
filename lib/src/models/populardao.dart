// Generated by https://quicktype.io

class PopularDAO {
  String backdropPath;
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  String releaseDate;
  String title;
  double voteAverage;
  int voteCount;
  
  PopularDAO({
    this.backdropPath,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.voteAverage,
    this.voteCount,
  });

  factory PopularDAO.fromJSON(Map<String, dynamic> map){ //Recibe json convertido a mapa
    return PopularDAO(
      backdropPath: map['backdrop_path'],
      id: map['id'] ,
      originalLanguage: map['original_language'],
      originalTitle: map['original_title'],
      overview: map['overview'],
      popularity: map['popularity'],
      posterPath: map['poster_path'],
      releaseDate: map['release_date'],
      title: map['title'],
      //Si vote average es entero regresalo en double, sino, regresalo como esta
      voteAverage: map['vote_average'] is int ? (map['vote_average'] as int).toDouble() : map['vote_average'],
      voteCount: map['vote_count'],
    );
  }

  Map<String,dynamic> toJSON(){
    return{
      "id":id,
      "backdrop_path":backdropPath,
      "original_language": originalLanguage,
      "overview": overview,
      "popularity": popularity,
      "poster_path": posterPath,
      "release_date": releaseDate,
      "title": title,
      "vote_average": voteAverage,
      "vote_count": voteCount,
    };
  }
}