class Movie{  int id;  String title;  double popularity;  String poster_path;  String release_date;  double vote_average;  String overview;  Movie({required this.id,required this.title, required this.popularity,required this.poster_path,required this.release_date,required this.vote_average,required this.overview});  factory Movie.fromMap(Map<String, dynamic> json) {    return Movie(        id:json['id'],        title:json['title'],        popularity:json['popularity'].toDouble(),        poster_path:json['poster_path'],        release_date:json['release_date'],        vote_average:json['vote_average'].toDouble(),        overview: json['overview']    );  }}