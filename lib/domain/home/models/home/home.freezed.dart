// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  List<Items> get items => throw _privateConstructorUsedError;
  String? get nextPageToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res>;
  $Res call({List<Items> items, String? nextPageToken});
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res> implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  final HomeModel _value;
  // ignore: unused_field
  final $Res Function(HomeModel) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? nextPageToken = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
      nextPageToken: nextPageToken == freezed
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$$_HomeModelCopyWith(
          _$_HomeModel value, $Res Function(_$_HomeModel) then) =
      __$$_HomeModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Items> items, String? nextPageToken});
}

/// @nodoc
class __$$_HomeModelCopyWithImpl<$Res> extends _$HomeModelCopyWithImpl<$Res>
    implements _$$_HomeModelCopyWith<$Res> {
  __$$_HomeModelCopyWithImpl(
      _$_HomeModel _value, $Res Function(_$_HomeModel) _then)
      : super(_value, (v) => _then(v as _$_HomeModel));

  @override
  _$_HomeModel get _value => super._value as _$_HomeModel;

  @override
  $Res call({
    Object? items = freezed,
    Object? nextPageToken = freezed,
  }) {
    return _then(_$_HomeModel(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
      nextPageToken: nextPageToken == freezed
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeModel implements _HomeModel {
  const _$_HomeModel(
      {required final List<Items> items, required this.nextPageToken})
      : _items = items;

  factory _$_HomeModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomeModelFromJson(json);

  final List<Items> _items;
  @override
  List<Items> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? nextPageToken;

  @override
  String toString() {
    return 'HomeModel(items: $items, nextPageToken: $nextPageToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeModel &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other.nextPageToken, nextPageToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(nextPageToken));

  @JsonKey(ignore: true)
  @override
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      __$$_HomeModelCopyWithImpl<_$_HomeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeModelToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {required final List<Items> items,
      required final String? nextPageToken}) = _$_HomeModel;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$_HomeModel.fromJson;

  @override
  List<Items> get items;
  @override
  String? get nextPageToken;
  @override
  @JsonKey(ignore: true)
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return _Items.fromJson(json);
}

/// @nodoc
mixin _$Items {
  String get id => throw _privateConstructorUsedError;
  Snippet get snippet => throw _privateConstructorUsedError;
  Statistics? get statistics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsCopyWith<Items> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsCopyWith<$Res> {
  factory $ItemsCopyWith(Items value, $Res Function(Items) then) =
      _$ItemsCopyWithImpl<$Res>;
  $Res call({String id, Snippet snippet, Statistics? statistics});

  $SnippetCopyWith<$Res> get snippet;
  $StatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class _$ItemsCopyWithImpl<$Res> implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._value, this._then);

  final Items _value;
  // ignore: unused_field
  final $Res Function(Items) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? snippet = freezed,
    Object? statistics = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      snippet: snippet == freezed
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as Snippet,
      statistics: statistics == freezed
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics?,
    ));
  }

  @override
  $SnippetCopyWith<$Res> get snippet {
    return $SnippetCopyWith<$Res>(_value.snippet, (value) {
      return _then(_value.copyWith(snippet: value));
    });
  }

  @override
  $StatisticsCopyWith<$Res>? get statistics {
    if (_value.statistics == null) {
      return null;
    }

    return $StatisticsCopyWith<$Res>(_value.statistics!, (value) {
      return _then(_value.copyWith(statistics: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemsCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$$_ItemsCopyWith(_$_Items value, $Res Function(_$_Items) then) =
      __$$_ItemsCopyWithImpl<$Res>;
  @override
  $Res call({String id, Snippet snippet, Statistics? statistics});

  @override
  $SnippetCopyWith<$Res> get snippet;
  @override
  $StatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class __$$_ItemsCopyWithImpl<$Res> extends _$ItemsCopyWithImpl<$Res>
    implements _$$_ItemsCopyWith<$Res> {
  __$$_ItemsCopyWithImpl(_$_Items _value, $Res Function(_$_Items) _then)
      : super(_value, (v) => _then(v as _$_Items));

  @override
  _$_Items get _value => super._value as _$_Items;

  @override
  $Res call({
    Object? id = freezed,
    Object? snippet = freezed,
    Object? statistics = freezed,
  }) {
    return _then(_$_Items(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      snippet: snippet == freezed
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as Snippet,
      statistics: statistics == freezed
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Items implements _Items {
  const _$_Items(
      {required this.id, required this.snippet, required this.statistics});

  factory _$_Items.fromJson(Map<String, dynamic> json) =>
      _$$_ItemsFromJson(json);

  @override
  final String id;
  @override
  final Snippet snippet;
  @override
  final Statistics? statistics;

  @override
  String toString() {
    return 'Items(id: $id, snippet: $snippet, statistics: $statistics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Items &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.snippet, snippet) &&
            const DeepCollectionEquality()
                .equals(other.statistics, statistics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(snippet),
      const DeepCollectionEquality().hash(statistics));

  @JsonKey(ignore: true)
  @override
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
      __$$_ItemsCopyWithImpl<_$_Items>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemsToJson(
      this,
    );
  }
}

abstract class _Items implements Items {
  const factory _Items(
      {required final String id,
      required final Snippet snippet,
      required final Statistics? statistics}) = _$_Items;

  factory _Items.fromJson(Map<String, dynamic> json) = _$_Items.fromJson;

  @override
  String get id;
  @override
  Snippet get snippet;
  @override
  Statistics? get statistics;
  @override
  @JsonKey(ignore: true)
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
      throw _privateConstructorUsedError;
}

Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  return _Statistics.fromJson(json);
}

/// @nodoc
mixin _$Statistics {
  String get viewCount => throw _privateConstructorUsedError;
  String get likeCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsCopyWith<Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsCopyWith<$Res> {
  factory $StatisticsCopyWith(
          Statistics value, $Res Function(Statistics) then) =
      _$StatisticsCopyWithImpl<$Res>;
  $Res call({String viewCount, String likeCount});
}

/// @nodoc
class _$StatisticsCopyWithImpl<$Res> implements $StatisticsCopyWith<$Res> {
  _$StatisticsCopyWithImpl(this._value, this._then);

  final Statistics _value;
  // ignore: unused_field
  final $Res Function(Statistics) _then;

  @override
  $Res call({
    Object? viewCount = freezed,
    Object? likeCount = freezed,
  }) {
    return _then(_value.copyWith(
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StatisticsCopyWith<$Res>
    implements $StatisticsCopyWith<$Res> {
  factory _$$_StatisticsCopyWith(
          _$_Statistics value, $Res Function(_$_Statistics) then) =
      __$$_StatisticsCopyWithImpl<$Res>;
  @override
  $Res call({String viewCount, String likeCount});
}

/// @nodoc
class __$$_StatisticsCopyWithImpl<$Res> extends _$StatisticsCopyWithImpl<$Res>
    implements _$$_StatisticsCopyWith<$Res> {
  __$$_StatisticsCopyWithImpl(
      _$_Statistics _value, $Res Function(_$_Statistics) _then)
      : super(_value, (v) => _then(v as _$_Statistics));

  @override
  _$_Statistics get _value => super._value as _$_Statistics;

  @override
  $Res call({
    Object? viewCount = freezed,
    Object? likeCount = freezed,
  }) {
    return _then(_$_Statistics(
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Statistics implements _Statistics {
  const _$_Statistics({required this.viewCount, required this.likeCount});

  factory _$_Statistics.fromJson(Map<String, dynamic> json) =>
      _$$_StatisticsFromJson(json);

  @override
  final String viewCount;
  @override
  final String likeCount;

  @override
  String toString() {
    return 'Statistics(viewCount: $viewCount, likeCount: $likeCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Statistics &&
            const DeepCollectionEquality().equals(other.viewCount, viewCount) &&
            const DeepCollectionEquality().equals(other.likeCount, likeCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(viewCount),
      const DeepCollectionEquality().hash(likeCount));

  @JsonKey(ignore: true)
  @override
  _$$_StatisticsCopyWith<_$_Statistics> get copyWith =>
      __$$_StatisticsCopyWithImpl<_$_Statistics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatisticsToJson(
      this,
    );
  }
}

abstract class _Statistics implements Statistics {
  const factory _Statistics(
      {required final String viewCount,
      required final String likeCount}) = _$_Statistics;

  factory _Statistics.fromJson(Map<String, dynamic> json) =
      _$_Statistics.fromJson;

  @override
  String get viewCount;
  @override
  String get likeCount;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticsCopyWith<_$_Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

Snippet _$SnippetFromJson(Map<String, dynamic> json) {
  return _Snippet.fromJson(json);
}

/// @nodoc
mixin _$Snippet {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Thumbnails get thumbnails => throw _privateConstructorUsedError;
  String get channelTitle => throw _privateConstructorUsedError;
  String get channelId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnippetCopyWith<Snippet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetCopyWith<$Res> {
  factory $SnippetCopyWith(Snippet value, $Res Function(Snippet) then) =
      _$SnippetCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      Thumbnails thumbnails,
      String channelTitle,
      String channelId});

  $ThumbnailsCopyWith<$Res> get thumbnails;
}

/// @nodoc
class _$SnippetCopyWithImpl<$Res> implements $SnippetCopyWith<$Res> {
  _$SnippetCopyWithImpl(this._value, this._then);

  final Snippet _value;
  // ignore: unused_field
  final $Res Function(Snippet) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnails = freezed,
    Object? channelTitle = freezed,
    Object? channelId = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnails,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ThumbnailsCopyWith<$Res> get thumbnails {
    return $ThumbnailsCopyWith<$Res>(_value.thumbnails, (value) {
      return _then(_value.copyWith(thumbnails: value));
    });
  }
}

/// @nodoc
abstract class _$$_SnippetCopyWith<$Res> implements $SnippetCopyWith<$Res> {
  factory _$$_SnippetCopyWith(
          _$_Snippet value, $Res Function(_$_Snippet) then) =
      __$$_SnippetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      Thumbnails thumbnails,
      String channelTitle,
      String channelId});

  @override
  $ThumbnailsCopyWith<$Res> get thumbnails;
}

/// @nodoc
class __$$_SnippetCopyWithImpl<$Res> extends _$SnippetCopyWithImpl<$Res>
    implements _$$_SnippetCopyWith<$Res> {
  __$$_SnippetCopyWithImpl(_$_Snippet _value, $Res Function(_$_Snippet) _then)
      : super(_value, (v) => _then(v as _$_Snippet));

  @override
  _$_Snippet get _value => super._value as _$_Snippet;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnails = freezed,
    Object? channelTitle = freezed,
    Object? channelId = freezed,
  }) {
    return _then(_$_Snippet(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnails,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Snippet implements _Snippet {
  const _$_Snippet(
      {required this.title,
      required this.description,
      required this.thumbnails,
      required this.channelTitle,
      required this.channelId});

  factory _$_Snippet.fromJson(Map<String, dynamic> json) =>
      _$$_SnippetFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final Thumbnails thumbnails;
  @override
  final String channelTitle;
  @override
  final String channelId;

  @override
  String toString() {
    return 'Snippet(title: $title, description: $description, thumbnails: $thumbnails, channelTitle: $channelTitle, channelId: $channelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Snippet &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.thumbnails, thumbnails) &&
            const DeepCollectionEquality()
                .equals(other.channelTitle, channelTitle) &&
            const DeepCollectionEquality().equals(other.channelId, channelId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(thumbnails),
      const DeepCollectionEquality().hash(channelTitle),
      const DeepCollectionEquality().hash(channelId));

  @JsonKey(ignore: true)
  @override
  _$$_SnippetCopyWith<_$_Snippet> get copyWith =>
      __$$_SnippetCopyWithImpl<_$_Snippet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SnippetToJson(
      this,
    );
  }
}

abstract class _Snippet implements Snippet {
  const factory _Snippet(
      {required final String title,
      required final String description,
      required final Thumbnails thumbnails,
      required final String channelTitle,
      required final String channelId}) = _$_Snippet;

  factory _Snippet.fromJson(Map<String, dynamic> json) = _$_Snippet.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  Thumbnails get thumbnails;
  @override
  String get channelTitle;
  @override
  String get channelId;
  @override
  @JsonKey(ignore: true)
  _$$_SnippetCopyWith<_$_Snippet> get copyWith =>
      throw _privateConstructorUsedError;
}

Thumbnails _$ThumbnailsFromJson(Map<String, dynamic> json) {
  return _Thumbnails.fromJson(json);
}

/// @nodoc
mixin _$Thumbnails {
  MaxResolution? get maxres => throw _privateConstructorUsedError;
  HighResolution? get high => throw _privateConstructorUsedError;
  @JsonKey(name: 'default')
  LowResolution? get low => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailsCopyWith<Thumbnails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailsCopyWith<$Res> {
  factory $ThumbnailsCopyWith(
          Thumbnails value, $Res Function(Thumbnails) then) =
      _$ThumbnailsCopyWithImpl<$Res>;
  $Res call(
      {MaxResolution? maxres,
      HighResolution? high,
      @JsonKey(name: 'default') LowResolution? low});

  $MaxResolutionCopyWith<$Res>? get maxres;
  $HighResolutionCopyWith<$Res>? get high;
  $LowResolutionCopyWith<$Res>? get low;
}

/// @nodoc
class _$ThumbnailsCopyWithImpl<$Res> implements $ThumbnailsCopyWith<$Res> {
  _$ThumbnailsCopyWithImpl(this._value, this._then);

  final Thumbnails _value;
  // ignore: unused_field
  final $Res Function(Thumbnails) _then;

  @override
  $Res call({
    Object? maxres = freezed,
    Object? high = freezed,
    Object? low = freezed,
  }) {
    return _then(_value.copyWith(
      maxres: maxres == freezed
          ? _value.maxres
          : maxres // ignore: cast_nullable_to_non_nullable
              as MaxResolution?,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as HighResolution?,
      low: low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as LowResolution?,
    ));
  }

  @override
  $MaxResolutionCopyWith<$Res>? get maxres {
    if (_value.maxres == null) {
      return null;
    }

    return $MaxResolutionCopyWith<$Res>(_value.maxres!, (value) {
      return _then(_value.copyWith(maxres: value));
    });
  }

  @override
  $HighResolutionCopyWith<$Res>? get high {
    if (_value.high == null) {
      return null;
    }

    return $HighResolutionCopyWith<$Res>(_value.high!, (value) {
      return _then(_value.copyWith(high: value));
    });
  }

  @override
  $LowResolutionCopyWith<$Res>? get low {
    if (_value.low == null) {
      return null;
    }

    return $LowResolutionCopyWith<$Res>(_value.low!, (value) {
      return _then(_value.copyWith(low: value));
    });
  }
}

/// @nodoc
abstract class _$$_ThumbnailsCopyWith<$Res>
    implements $ThumbnailsCopyWith<$Res> {
  factory _$$_ThumbnailsCopyWith(
          _$_Thumbnails value, $Res Function(_$_Thumbnails) then) =
      __$$_ThumbnailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {MaxResolution? maxres,
      HighResolution? high,
      @JsonKey(name: 'default') LowResolution? low});

  @override
  $MaxResolutionCopyWith<$Res>? get maxres;
  @override
  $HighResolutionCopyWith<$Res>? get high;
  @override
  $LowResolutionCopyWith<$Res>? get low;
}

/// @nodoc
class __$$_ThumbnailsCopyWithImpl<$Res> extends _$ThumbnailsCopyWithImpl<$Res>
    implements _$$_ThumbnailsCopyWith<$Res> {
  __$$_ThumbnailsCopyWithImpl(
      _$_Thumbnails _value, $Res Function(_$_Thumbnails) _then)
      : super(_value, (v) => _then(v as _$_Thumbnails));

  @override
  _$_Thumbnails get _value => super._value as _$_Thumbnails;

  @override
  $Res call({
    Object? maxres = freezed,
    Object? high = freezed,
    Object? low = freezed,
  }) {
    return _then(_$_Thumbnails(
      maxres: maxres == freezed
          ? _value.maxres
          : maxres // ignore: cast_nullable_to_non_nullable
              as MaxResolution?,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as HighResolution?,
      low: low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as LowResolution?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Thumbnails implements _Thumbnails {
  const _$_Thumbnails(
      {required this.maxres,
      required this.high,
      @JsonKey(name: 'default') required this.low});

  factory _$_Thumbnails.fromJson(Map<String, dynamic> json) =>
      _$$_ThumbnailsFromJson(json);

  @override
  final MaxResolution? maxres;
  @override
  final HighResolution? high;
  @override
  @JsonKey(name: 'default')
  final LowResolution? low;

  @override
  String toString() {
    return 'Thumbnails(maxres: $maxres, high: $high, low: $low)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Thumbnails &&
            const DeepCollectionEquality().equals(other.maxres, maxres) &&
            const DeepCollectionEquality().equals(other.high, high) &&
            const DeepCollectionEquality().equals(other.low, low));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maxres),
      const DeepCollectionEquality().hash(high),
      const DeepCollectionEquality().hash(low));

  @JsonKey(ignore: true)
  @override
  _$$_ThumbnailsCopyWith<_$_Thumbnails> get copyWith =>
      __$$_ThumbnailsCopyWithImpl<_$_Thumbnails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThumbnailsToJson(
      this,
    );
  }
}

abstract class _Thumbnails implements Thumbnails {
  const factory _Thumbnails(
          {required final MaxResolution? maxres,
          required final HighResolution? high,
          @JsonKey(name: 'default') required final LowResolution? low}) =
      _$_Thumbnails;

  factory _Thumbnails.fromJson(Map<String, dynamic> json) =
      _$_Thumbnails.fromJson;

  @override
  MaxResolution? get maxres;
  @override
  HighResolution? get high;
  @override
  @JsonKey(name: 'default')
  LowResolution? get low;
  @override
  @JsonKey(ignore: true)
  _$$_ThumbnailsCopyWith<_$_Thumbnails> get copyWith =>
      throw _privateConstructorUsedError;
}

LowResolution _$LowResolutionFromJson(Map<String, dynamic> json) {
  return _LowResolution.fromJson(json);
}

/// @nodoc
mixin _$LowResolution {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LowResolutionCopyWith<LowResolution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LowResolutionCopyWith<$Res> {
  factory $LowResolutionCopyWith(
          LowResolution value, $Res Function(LowResolution) then) =
      _$LowResolutionCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$LowResolutionCopyWithImpl<$Res>
    implements $LowResolutionCopyWith<$Res> {
  _$LowResolutionCopyWithImpl(this._value, this._then);

  final LowResolution _value;
  // ignore: unused_field
  final $Res Function(LowResolution) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LowResolutionCopyWith<$Res>
    implements $LowResolutionCopyWith<$Res> {
  factory _$$_LowResolutionCopyWith(
          _$_LowResolution value, $Res Function(_$_LowResolution) then) =
      __$$_LowResolutionCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$$_LowResolutionCopyWithImpl<$Res>
    extends _$LowResolutionCopyWithImpl<$Res>
    implements _$$_LowResolutionCopyWith<$Res> {
  __$$_LowResolutionCopyWithImpl(
      _$_LowResolution _value, $Res Function(_$_LowResolution) _then)
      : super(_value, (v) => _then(v as _$_LowResolution));

  @override
  _$_LowResolution get _value => super._value as _$_LowResolution;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_LowResolution(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LowResolution implements _LowResolution {
  const _$_LowResolution({required this.url});

  factory _$_LowResolution.fromJson(Map<String, dynamic> json) =>
      _$$_LowResolutionFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'LowResolution(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LowResolution &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_LowResolutionCopyWith<_$_LowResolution> get copyWith =>
      __$$_LowResolutionCopyWithImpl<_$_LowResolution>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LowResolutionToJson(
      this,
    );
  }
}

abstract class _LowResolution implements LowResolution {
  const factory _LowResolution({required final String url}) = _$_LowResolution;

  factory _LowResolution.fromJson(Map<String, dynamic> json) =
      _$_LowResolution.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_LowResolutionCopyWith<_$_LowResolution> get copyWith =>
      throw _privateConstructorUsedError;
}

HighResolution _$HighResolutionFromJson(Map<String, dynamic> json) {
  return _HighResolution.fromJson(json);
}

/// @nodoc
mixin _$HighResolution {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighResolutionCopyWith<HighResolution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighResolutionCopyWith<$Res> {
  factory $HighResolutionCopyWith(
          HighResolution value, $Res Function(HighResolution) then) =
      _$HighResolutionCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$HighResolutionCopyWithImpl<$Res>
    implements $HighResolutionCopyWith<$Res> {
  _$HighResolutionCopyWithImpl(this._value, this._then);

  final HighResolution _value;
  // ignore: unused_field
  final $Res Function(HighResolution) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_HighResolutionCopyWith<$Res>
    implements $HighResolutionCopyWith<$Res> {
  factory _$$_HighResolutionCopyWith(
          _$_HighResolution value, $Res Function(_$_HighResolution) then) =
      __$$_HighResolutionCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$$_HighResolutionCopyWithImpl<$Res>
    extends _$HighResolutionCopyWithImpl<$Res>
    implements _$$_HighResolutionCopyWith<$Res> {
  __$$_HighResolutionCopyWithImpl(
      _$_HighResolution _value, $Res Function(_$_HighResolution) _then)
      : super(_value, (v) => _then(v as _$_HighResolution));

  @override
  _$_HighResolution get _value => super._value as _$_HighResolution;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_HighResolution(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HighResolution implements _HighResolution {
  const _$_HighResolution({required this.url});

  factory _$_HighResolution.fromJson(Map<String, dynamic> json) =>
      _$$_HighResolutionFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'HighResolution(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HighResolution &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_HighResolutionCopyWith<_$_HighResolution> get copyWith =>
      __$$_HighResolutionCopyWithImpl<_$_HighResolution>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HighResolutionToJson(
      this,
    );
  }
}

abstract class _HighResolution implements HighResolution {
  const factory _HighResolution({required final String url}) =
      _$_HighResolution;

  factory _HighResolution.fromJson(Map<String, dynamic> json) =
      _$_HighResolution.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_HighResolutionCopyWith<_$_HighResolution> get copyWith =>
      throw _privateConstructorUsedError;
}

MaxResolution _$MaxResolutionFromJson(Map<String, dynamic> json) {
  return _MaxResolution.fromJson(json);
}

/// @nodoc
mixin _$MaxResolution {
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaxResolutionCopyWith<MaxResolution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaxResolutionCopyWith<$Res> {
  factory $MaxResolutionCopyWith(
          MaxResolution value, $Res Function(MaxResolution) then) =
      _$MaxResolutionCopyWithImpl<$Res>;
  $Res call({String? url});
}

/// @nodoc
class _$MaxResolutionCopyWithImpl<$Res>
    implements $MaxResolutionCopyWith<$Res> {
  _$MaxResolutionCopyWithImpl(this._value, this._then);

  final MaxResolution _value;
  // ignore: unused_field
  final $Res Function(MaxResolution) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MaxResolutionCopyWith<$Res>
    implements $MaxResolutionCopyWith<$Res> {
  factory _$$_MaxResolutionCopyWith(
          _$_MaxResolution value, $Res Function(_$_MaxResolution) then) =
      __$$_MaxResolutionCopyWithImpl<$Res>;
  @override
  $Res call({String? url});
}

/// @nodoc
class __$$_MaxResolutionCopyWithImpl<$Res>
    extends _$MaxResolutionCopyWithImpl<$Res>
    implements _$$_MaxResolutionCopyWith<$Res> {
  __$$_MaxResolutionCopyWithImpl(
      _$_MaxResolution _value, $Res Function(_$_MaxResolution) _then)
      : super(_value, (v) => _then(v as _$_MaxResolution));

  @override
  _$_MaxResolution get _value => super._value as _$_MaxResolution;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_MaxResolution(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MaxResolution implements _MaxResolution {
  const _$_MaxResolution({required this.url});

  factory _$_MaxResolution.fromJson(Map<String, dynamic> json) =>
      _$$_MaxResolutionFromJson(json);

  @override
  final String? url;

  @override
  String toString() {
    return 'MaxResolution(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MaxResolution &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_MaxResolutionCopyWith<_$_MaxResolution> get copyWith =>
      __$$_MaxResolutionCopyWithImpl<_$_MaxResolution>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MaxResolutionToJson(
      this,
    );
  }
}

abstract class _MaxResolution implements MaxResolution {
  const factory _MaxResolution({required final String? url}) = _$_MaxResolution;

  factory _MaxResolution.fromJson(Map<String, dynamic> json) =
      _$_MaxResolution.fromJson;

  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_MaxResolutionCopyWith<_$_MaxResolution> get copyWith =>
      throw _privateConstructorUsedError;
}
