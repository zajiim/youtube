// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeModel _$$_HomeModelFromJson(Map<String, dynamic> json) => _$_HomeModel(
      items: (json['items'] as List<dynamic>)
          .map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageToken: json['nextPageToken'] as String?,
    );

Map<String, dynamic> _$$_HomeModelToJson(_$_HomeModel instance) =>
    <String, dynamic>{
      'items': instance.items,
      'nextPageToken': instance.nextPageToken,
    };

_$_Items _$$_ItemsFromJson(Map<String, dynamic> json) => _$_Items(
      id: json['id'] as String,
      snippet: Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
      statistics: json['statistics'] == null
          ? null
          : Statistics.fromJson(json['statistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemsToJson(_$_Items instance) => <String, dynamic>{
      'id': instance.id,
      'snippet': instance.snippet,
      'statistics': instance.statistics,
    };

_$_Statistics _$$_StatisticsFromJson(Map<String, dynamic> json) =>
    _$_Statistics(
      viewCount: json['viewCount'] as String,
      likeCount: json['likeCount'] as String,
    );

Map<String, dynamic> _$$_StatisticsToJson(_$_Statistics instance) =>
    <String, dynamic>{
      'viewCount': instance.viewCount,
      'likeCount': instance.likeCount,
    };

_$_Snippet _$$_SnippetFromJson(Map<String, dynamic> json) => _$_Snippet(
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnails:
          Thumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
      channelTitle: json['channelTitle'] as String,
      channelId: json['channelId'] as String,
    );

Map<String, dynamic> _$$_SnippetToJson(_$_Snippet instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'thumbnails': instance.thumbnails,
      'channelTitle': instance.channelTitle,
      'channelId': instance.channelId,
    };

_$_Thumbnails _$$_ThumbnailsFromJson(Map<String, dynamic> json) =>
    _$_Thumbnails(
      maxres: json['maxres'] == null
          ? null
          : MaxResolution.fromJson(json['maxres'] as Map<String, dynamic>),
      high: json['high'] == null
          ? null
          : HighResolution.fromJson(json['high'] as Map<String, dynamic>),
      low: json['default'] == null
          ? null
          : LowResolution.fromJson(json['default'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ThumbnailsToJson(_$_Thumbnails instance) =>
    <String, dynamic>{
      'maxres': instance.maxres,
      'high': instance.high,
      'default': instance.low,
    };

_$_LowResolution _$$_LowResolutionFromJson(Map<String, dynamic> json) =>
    _$_LowResolution(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_LowResolutionToJson(_$_LowResolution instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$_HighResolution _$$_HighResolutionFromJson(Map<String, dynamic> json) =>
    _$_HighResolution(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_HighResolutionToJson(_$_HighResolution instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$_MaxResolution _$$_MaxResolutionFromJson(Map<String, dynamic> json) =>
    _$_MaxResolution(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_MaxResolutionToJson(_$_MaxResolution instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
