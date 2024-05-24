import 'dart:convert';

List<MovieModel> movieModelFromJson(String str) =>
    List<MovieModel>.from(json.decode(str).map((x) => MovieModel.fromJson(x)));

String movieModelToJson(List<MovieModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MovieModel {
  final MovieDetails? movieDetails;

  MovieModel({
    this.movieDetails,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        movieDetails: json["movieDetails"] == null
            ? null
            : MovieDetails.fromJson(json["movieDetails"]),
      );

  Map<String, dynamic> toJson() => {
        "movieDetails": movieDetails?.toJson(),
      };
}

class MovieDetails {
  final Movie? movie;
  final int? movieId;
  final MovieUserData? movieUserData;
  final String? recValType;
  final dynamic tstamp;

  MovieDetails({
    this.movie,
    this.movieId,
    this.movieUserData,
    this.recValType,
    this.tstamp,
  });

  factory MovieDetails.fromJson(Map<String, dynamic> json) => MovieDetails(
        movie: json["movie"] == null ? null : Movie.fromJson(json["movie"]),
        movieId: json["movieId"],
        movieUserData: json["movieUserData"] == null
            ? null
            : MovieUserData.fromJson(json["movieUserData"]),
        recValType: json["rec_val_type"],
        tstamp: json["tstamp"],
      );

  Map<String, dynamic> toJson() => {
        "movie": movie?.toJson(),
        "movieId": movieId,
        "movieUserData": movieUserData?.toJson(),
        "rec_val_type": recValType,
        "tstamp": tstamp,
      };
}

class Movie {
  final List<String>? actors;
  final double? avgRating;
  final List<String>? backdropPaths;
  final List<String>? directors;
  final DateTime? dvdReleaseDate;
  final List<String>? genres;
  final String? imdbMovieId;
  final List<String>? languages;
  final int? movieId;
  final String? mpaa;
  final int? numRatings;
  final String? originalTitle;
  final String? plotSummary;
  final String? posterPath;
  final DateTime? releaseDate;
  final String? releaseYear;
  final int? runtime;
  final String? title;
  final int? tmdbMovieId;
  final List<String>? youtubeTrailerIds;

  Movie({
    this.actors,
    this.avgRating,
    this.backdropPaths,
    this.directors,
    this.dvdReleaseDate,
    this.genres,
    this.imdbMovieId,
    this.languages,
    this.movieId,
    this.mpaa,
    this.numRatings,
    this.originalTitle,
    this.plotSummary,
    this.posterPath,
    this.releaseDate,
    this.releaseYear,
    this.runtime,
    this.title,
    this.tmdbMovieId,
    this.youtubeTrailerIds,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        actors: json["actors"] == null
            ? []
            : List<String>.from(json["actors"]!.map((x) => x)),
        avgRating: json["avgRating"]?.toDouble(),
        backdropPaths: json["backdropPaths"] == null
            ? []
            : List<String>.from(json["backdropPaths"]!.map((x) => x)),
        directors: json["directors"] == null
            ? []
            : List<String>.from(json["directors"]!.map((x) => x)),
        dvdReleaseDate: json["dvdReleaseDate"] == null
            ? null
            : DateTime.parse(json["dvdReleaseDate"]),
        genres: json["genres"] == null
            ? []
            : List<String>.from(json["genres"]!.map((x) => x)),
        imdbMovieId: json["imdbMovieId"],
        languages: json["languages"] == null
            ? []
            : List<String>.from(json["languages"]!.map((x) => x)),
        movieId: json["movieId"],
        mpaa: json["mpaa"],
        numRatings: json["numRatings"],
        originalTitle: json["originalTitle"],
        plotSummary: json["plotSummary"],
        posterPath: json["posterPath"],
        releaseDate: json["releaseDate"] == null
            ? null
            : DateTime.parse(json["releaseDate"]),
        releaseYear: json["releaseYear"],
        runtime: json["runtime"],
        title: json["title"],
        tmdbMovieId: json["tmdbMovieId"],
        youtubeTrailerIds: json["youtubeTrailerIds"] == null
            ? []
            : List<String>.from(json["youtubeTrailerIds"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "actors":
            actors == null ? [] : List<dynamic>.from(actors!.map((x) => x)),
        "avgRating": avgRating,
        "backdropPaths": backdropPaths == null
            ? []
            : List<dynamic>.from(backdropPaths!.map((x) => x)),
        "directors": directors == null
            ? []
            : List<dynamic>.from(directors!.map((x) => x)),
        "dvdReleaseDate":
            "${dvdReleaseDate!.year.toString().padLeft(4, '0')}-${dvdReleaseDate!.month.toString().padLeft(2, '0')}-${dvdReleaseDate!.day.toString().padLeft(2, '0')}",
        "genres":
            genres == null ? [] : List<dynamic>.from(genres!.map((x) => x)),
        "imdbMovieId": imdbMovieId,
        "languages": languages == null
            ? []
            : List<dynamic>.from(languages!.map((x) => x)),
        "movieId": movieId,
        "mpaa": mpaa,
        "numRatings": numRatings,
        "originalTitle": originalTitle,
        "plotSummary": plotSummary,
        "posterPath": posterPath,
        "releaseDate":
            "${releaseDate!.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
        "releaseYear": releaseYear,
        "runtime": runtime,
        "title": title,
        "tmdbMovieId": tmdbMovieId,
        "youtubeTrailerIds": youtubeTrailerIds == null
            ? []
            : List<dynamic>.from(youtubeTrailerIds!.map((x) => x)),
      };
}

class MovieUserData {
  final dynamic dateRated;
  final bool? hidden;
  final int? movieId;
  final double? prediction;
  final PredictionDetails? predictionDetails;
  final dynamic rating;
  final int? userId;
  final bool? wishlist;

  MovieUserData({
    this.dateRated,
    this.hidden,
    this.movieId,
    this.prediction,
    this.predictionDetails,
    this.rating,
    this.userId,
    this.wishlist,
  });

  factory MovieUserData.fromJson(Map<String, dynamic> json) => MovieUserData(
        dateRated: json["dateRated"],
        hidden: json["hidden"],
        movieId: json["movieId"],
        prediction: json["prediction"]?.toDouble(),
        predictionDetails: json["predictionDetails"] == null
            ? null
            : PredictionDetails.fromJson(json["predictionDetails"]),
        rating: json["rating"],
        userId: json["userId"],
        wishlist: json["wishlist"],
      );

  Map<String, dynamic> toJson() => {
        "dateRated": dateRated,
        "hidden": hidden,
        "movieId": movieId,
        "prediction": prediction,
        "predictionDetails": predictionDetails?.toJson(),
        "rating": rating,
        "userId": userId,
        "wishlist": wishlist,
      };
}

class PredictionDetails {
  final List<Component>? components;
  final double? primaryPrediction;
  final Type? primaryPredictionType;

  PredictionDetails({
    this.components,
    this.primaryPrediction,
    this.primaryPredictionType,
  });

  factory PredictionDetails.fromJson(Map<String, dynamic> json) =>
      PredictionDetails(
        components: json["components"] == null
            ? []
            : List<Component>.from(
                json["components"]!.map((x) => Component.fromJson(x))),
        primaryPrediction: json["primaryPrediction"]?.toDouble(),
        primaryPredictionType: typeValues.map[json["primaryPredictionType"]]!,
      );

  Map<String, dynamic> toJson() => {
        "components": components == null
            ? []
            : List<dynamic>.from(components!.map((x) => x.toJson())),
        "primaryPrediction": primaryPrediction,
        "primaryPredictionType": typeValues.reverse[primaryPredictionType],
      };
}

class Component {
  final double? pred;
  final Type? type;

  Component({
    this.pred,
    this.type,
  });

  factory Component.fromJson(Map<String, dynamic> json) => Component(
        pred: json["pred"]?.toDouble(),
        type: typeValues.map[json["type"]]!,
      );

  Map<String, dynamic> toJson() => {
        "pred": pred,
        "type": typeValues.reverse[type],
      };
}

enum Type { FALLBACK, USER }

final typeValues = EnumValues({"FALLBACK": Type.FALLBACK, "USER": Type.USER});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
