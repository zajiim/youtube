import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.g.dart';
part 'home.freezed.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    required List<Items> items,
    required String? nextPageToken,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

@freezed
class Items with _$Items {
  const factory Items({
    required String id,
    required Snippet snippet,
    required Statistics? statistics,
  }) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}



@freezed
class Statistics with _$Statistics {
  const factory Statistics({
    required String viewCount,
    required String likeCount,
  }) = _Statistics;

  factory Statistics.fromJson(Map<String, dynamic> json) =>
      _$StatisticsFromJson(json);
}

@freezed
class Snippet with _$Snippet {
  const factory Snippet({
    required String title,
    required String description,
    required Thumbnails thumbnails,
    required String channelTitle,
    required String channelId,
  }) = _Snippet;

  factory Snippet.fromJson(Map<String, dynamic> json) =>
      _$SnippetFromJson(json);
}

@freezed
class Thumbnails with _$Thumbnails {
  const factory Thumbnails({
    required MaxResolution? maxres,
    required HighResolution? high,
    @JsonKey(name: 'default') required LowResolution? low,
  }) = _Thumbnails;

  factory Thumbnails.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailsFromJson(json);
}

@freezed
class LowResolution with _$LowResolution {
  const factory LowResolution({
    required String url,
  }) = _LowResolution;

  factory LowResolution.fromJson(Map<String, dynamic> json) =>
      _$LowResolutionFromJson(json);
}

@freezed
class HighResolution with _$HighResolution {
  const factory HighResolution({
    required String url,
  }) = _HighResolution;

  factory HighResolution.fromJson(Map<String, dynamic> json) =>
      _$HighResolutionFromJson(json);
}

@freezed
class MaxResolution with _$MaxResolution {
  const factory MaxResolution({
    required String? url,
  }) = _MaxResolution;

  factory MaxResolution.fromJson(Map<String, dynamic> json) =>
      _$MaxResolutionFromJson(json);
}



// // To parse this JSON data, do
// //
// //     final homeModel = homeModelFromJson(jsonString);

// import 'package:meta/meta.dart';
// import 'dart:convert';

// HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

// String homeModelToJson(HomeModel data) => json.encode(data.toJson());

// class HomeModel {
//     HomeModel({
//         required this.kind,
//         required this.etag,
//         required this.items,
//         required this.nextPageToken,
//         required this.pageInfo,
//     });

//     final String kind;
//     final String etag;
//     final List<Item> items;
//     final String nextPageToken;
//     final PageInfo pageInfo;

//     factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
//         kind: json["kind"],
//         etag: json["etag"],
//         items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
//         nextPageToken: json["nextPageToken"],
//         pageInfo: PageInfo.fromJson(json["pageInfo"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "kind": kind,
//         "etag": etag,
//         "items": List<dynamic>.from(items.map((x) => x.toJson())),
//         "nextPageToken": nextPageToken,
//         "pageInfo": pageInfo.toJson(),
//     };
// }

// class Item {
//     Item({
//         required this.kind,
//         required this.etag,
//         required this.id,
//         required this.snippet,
//         required this.contentDetails,
//         required this.statistics,
//     });

//     final String? kind;
//     final String? etag;
//     final String? id;
//     final Snippet? snippet;
//     final ContentDetails? contentDetails;
//     final ContentDetails? statistics;

//     factory Item.fromJson(Map<String, dynamic> json) => Item(
//         kind: json["kind"] == null ? null : json["kind"],
//         etag: json["etag"] == null ? null : json["etag"],
//         id: json["id"] == null ? null : json["id"],
//         snippet: json["snippet"] == null ? null : Snippet.fromJson(json["snippet"]),
//         contentDetails: json["contentDetails"] == null ? null : ContentDetails.fromJson(json["contentDetails"]),
//         statistics: json["statistics"] == null ? null : ContentDetails.fromJson(json["statistics"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "kind": kind == null ? null : kind,
//         "etag": etag == null ? null : etag,
//         "id": id == null ? null : id,
//         "snippet": snippet == null ? null : snippet?.toJson(),
//         "contentDetails": contentDetails == null ? null : contentDetails?.toJson(),
//         "statistics": statistics == null ? null : statistics?.toJson(),
//     };
// }

// class ContentDetails {
//     ContentDetails();

//     factory ContentDetails.fromJson(Map<String, dynamic> json) => ContentDetails(
//     );

//     Map<String, dynamic> toJson() => {
//     };
// }

// class Snippet {
//     Snippet({
//         required this.publishedAt,
//         required this.channelId,
//         required this.title,
//         required this.description,
//         required this.thumbnails,
//         required this.channelTitle,
//         required this.tags,
//         required this.categoryId,
//         required this.liveBroadcastContent,
//         required this.defaultLanguage,
//         required this.localized,
//         required this.defaultAudioLanguage,
//     });

//     final DateTime publishedAt;
//     final String channelId;
//     final String title;
//     final String description;
//     final Thumbnails thumbnails;
//     final String channelTitle;
//     final List<dynamic> tags;
//     final String categoryId;
//     final String liveBroadcastContent;
//     final String defaultLanguage;
//     final ContentDetails localized;
//     final String defaultAudioLanguage;

//     factory Snippet.fromJson(Map<String, dynamic> json) => Snippet(
//         publishedAt: DateTime.parse(json["publishedAt"]),
//         channelId: json["channelId"],
//         title: json["title"],
//         description: json["description"],
//         thumbnails: Thumbnails.fromJson(json["thumbnails"]),
//         channelTitle: json["channelTitle"],
//         tags: List<dynamic>.from(json["tags"].map((x) => x)),
//         categoryId: json["categoryId"],
//         liveBroadcastContent: json["liveBroadcastContent"],
//         defaultLanguage: json["defaultLanguage"],
//         localized: ContentDetails.fromJson(json["localized"]),
//         defaultAudioLanguage: json["defaultAudioLanguage"],
//     );

//     Map<String, dynamic> toJson() => {
//         "publishedAt": publishedAt.toIso8601String(),
//         "channelId": channelId,
//         "title": title,
//         "description": description,
//         "thumbnails": thumbnails.toJson(),
//         "channelTitle": channelTitle,
//         "tags": List<dynamic>.from(tags.map((x) => x)),
//         "categoryId": categoryId,
//         "liveBroadcastContent": liveBroadcastContent,
//         "defaultLanguage": defaultLanguage,
//         "localized": localized.toJson(),
//         "defaultAudioLanguage": defaultAudioLanguage,
//     };
// }

// class Thumbnails {
//     Thumbnails({
//         required this.thumbnailsDefault,
//         required this.medium,
//         required this.high,
//         required this.standard,
//         required this.maxres,
//     });

//     final Default thumbnailsDefault;
//     final Default medium;
//     final Default high;
//     final Default standard;
//     final Default maxres;

//     factory Thumbnails.fromJson(Map<String, dynamic> json) => Thumbnails(
//         thumbnailsDefault: Default.fromJson(json["default"]),
//         medium: Default.fromJson(json["medium"]),
//         high: Default.fromJson(json["high"]),
//         standard: Default.fromJson(json["standard"]),
//         maxres: Default.fromJson(json["maxres"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "default": thumbnailsDefault.toJson(),
//         "medium": medium.toJson(),
//         "high": high.toJson(),
//         "standard": standard.toJson(),
//         "maxres": maxres.toJson(),
//     };
// }

// class Default {
//     Default({
//         required this.url,
//         required this.width,
//         required this.height,
//     });

//     final String url;
//     final int width;
//     final int height;

//     factory Default.fromJson(Map<String, dynamic> json) => Default(
//         url: json["url"],
//         width: json["width"],
//         height: json["height"],
//     );

//     Map<String, dynamic> toJson() => {
//         "url": url,
//         "width": width,
//         "height": height,
//     };
// }

// class PageInfo {
//     PageInfo({
//         required this.totalResults,
//         required this.resultsPerPage,
//     });

//     final int totalResults;
//     final int resultsPerPage;

//     factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
//         totalResults: json["totalResults"],
//         resultsPerPage: json["resultsPerPage"],
//     );

//     Map<String, dynamic> toJson() => {
//         "totalResults": totalResults,
//         "resultsPerPage": resultsPerPage,
//     };
// }


