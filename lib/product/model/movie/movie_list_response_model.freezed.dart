// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieListResponseModel _$MovieListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MovieListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MovieListResponseModel {
  BaseResponseModel? get response => throw _privateConstructorUsedError;
  MovieListData? get data => throw _privateConstructorUsedError;

  /// Serializes this MovieListResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieListResponseModelCopyWith<MovieListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListResponseModelCopyWith<$Res> {
  factory $MovieListResponseModelCopyWith(MovieListResponseModel value,
          $Res Function(MovieListResponseModel) then) =
      _$MovieListResponseModelCopyWithImpl<$Res, MovieListResponseModel>;
  @useResult
  $Res call({BaseResponseModel? response, MovieListData? data});

  $BaseResponseModelCopyWith<$Res>? get response;
  $MovieListDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MovieListResponseModelCopyWithImpl<$Res,
        $Val extends MovieListResponseModel>
    implements $MovieListResponseModelCopyWith<$Res> {
  _$MovieListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponseModel?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MovieListData?,
    ) as $Val);
  }

  /// Create a copy of MovieListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseResponseModelCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $BaseResponseModelCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }

  /// Create a copy of MovieListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieListDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MovieListDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieListResponseModelImplCopyWith<$Res>
    implements $MovieListResponseModelCopyWith<$Res> {
  factory _$$MovieListResponseModelImplCopyWith(
          _$MovieListResponseModelImpl value,
          $Res Function(_$MovieListResponseModelImpl) then) =
      __$$MovieListResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseResponseModel? response, MovieListData? data});

  @override
  $BaseResponseModelCopyWith<$Res>? get response;
  @override
  $MovieListDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$MovieListResponseModelImplCopyWithImpl<$Res>
    extends _$MovieListResponseModelCopyWithImpl<$Res,
        _$MovieListResponseModelImpl>
    implements _$$MovieListResponseModelImplCopyWith<$Res> {
  __$$MovieListResponseModelImplCopyWithImpl(
      _$MovieListResponseModelImpl _value,
      $Res Function(_$MovieListResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MovieListResponseModelImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponseModel?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MovieListData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieListResponseModelImpl implements _MovieListResponseModel {
  _$MovieListResponseModelImpl({this.response, this.data});

  factory _$MovieListResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieListResponseModelImplFromJson(json);

  @override
  final BaseResponseModel? response;
  @override
  final MovieListData? data;

  @override
  String toString() {
    return 'MovieListResponseModel(response: $response, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieListResponseModelImpl &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, response, data);

  /// Create a copy of MovieListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListResponseModelImplCopyWith<_$MovieListResponseModelImpl>
      get copyWith => __$$MovieListResponseModelImplCopyWithImpl<
          _$MovieListResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieListResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MovieListResponseModel implements MovieListResponseModel {
  factory _MovieListResponseModel(
      {final BaseResponseModel? response,
      final MovieListData? data}) = _$MovieListResponseModelImpl;

  factory _MovieListResponseModel.fromJson(Map<String, dynamic> json) =
      _$MovieListResponseModelImpl.fromJson;

  @override
  BaseResponseModel? get response;
  @override
  MovieListData? get data;

  /// Create a copy of MovieListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieListResponseModelImplCopyWith<_$MovieListResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MovieListData _$MovieListDataFromJson(Map<String, dynamic> json) {
  return _MovieListData.fromJson(json);
}

/// @nodoc
mixin _$MovieListData {
  List<MovieModel>? get movies => throw _privateConstructorUsedError;
  PaginationModel? get pagination => throw _privateConstructorUsedError;

  /// Serializes this MovieListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieListDataCopyWith<MovieListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListDataCopyWith<$Res> {
  factory $MovieListDataCopyWith(
          MovieListData value, $Res Function(MovieListData) then) =
      _$MovieListDataCopyWithImpl<$Res, MovieListData>;
  @useResult
  $Res call({List<MovieModel>? movies, PaginationModel? pagination});

  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$MovieListDataCopyWithImpl<$Res, $Val extends MovieListData>
    implements $MovieListDataCopyWith<$Res> {
  _$MovieListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      movies: freezed == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel?,
    ) as $Val);
  }

  /// Create a copy of MovieListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationModelCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationModelCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieListDataImplCopyWith<$Res>
    implements $MovieListDataCopyWith<$Res> {
  factory _$$MovieListDataImplCopyWith(
          _$MovieListDataImpl value, $Res Function(_$MovieListDataImpl) then) =
      __$$MovieListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MovieModel>? movies, PaginationModel? pagination});

  @override
  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$MovieListDataImplCopyWithImpl<$Res>
    extends _$MovieListDataCopyWithImpl<$Res, _$MovieListDataImpl>
    implements _$$MovieListDataImplCopyWith<$Res> {
  __$$MovieListDataImplCopyWithImpl(
      _$MovieListDataImpl _value, $Res Function(_$MovieListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$MovieListDataImpl(
      movies: freezed == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieListDataImpl implements _MovieListData {
  _$MovieListDataImpl({final List<MovieModel>? movies, this.pagination})
      : _movies = movies;

  factory _$MovieListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieListDataImplFromJson(json);

  final List<MovieModel>? _movies;
  @override
  List<MovieModel>? get movies {
    final value = _movies;
    if (value == null) return null;
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PaginationModel? pagination;

  @override
  String toString() {
    return 'MovieListData(movies: $movies, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieListDataImpl &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_movies), pagination);

  /// Create a copy of MovieListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListDataImplCopyWith<_$MovieListDataImpl> get copyWith =>
      __$$MovieListDataImplCopyWithImpl<_$MovieListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieListDataImplToJson(
      this,
    );
  }
}

abstract class _MovieListData implements MovieListData {
  factory _MovieListData(
      {final List<MovieModel>? movies,
      final PaginationModel? pagination}) = _$MovieListDataImpl;

  factory _MovieListData.fromJson(Map<String, dynamic> json) =
      _$MovieListDataImpl.fromJson;

  @override
  List<MovieModel>? get movies;
  @override
  PaginationModel? get pagination;

  /// Create a copy of MovieListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieListDataImplCopyWith<_$MovieListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationModel _$PaginationModelFromJson(Map<String, dynamic> json) {
  return _PaginationModel.fromJson(json);
}

/// @nodoc
mixin _$PaginationModel {
  int? get totalCount => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  int? get maxPage => throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;

  /// Serializes this PaginationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationModelCopyWith<PaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationModelCopyWith<$Res> {
  factory $PaginationModelCopyWith(
          PaginationModel value, $Res Function(PaginationModel) then) =
      _$PaginationModelCopyWithImpl<$Res, PaginationModel>;
  @useResult
  $Res call({int? totalCount, int? perPage, int? maxPage, int? currentPage});
}

/// @nodoc
class _$PaginationModelCopyWithImpl<$Res, $Val extends PaginationModel>
    implements $PaginationModelCopyWith<$Res> {
  _$PaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? perPage = freezed,
    Object? maxPage = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPage: freezed == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationModelImplCopyWith<$Res>
    implements $PaginationModelCopyWith<$Res> {
  factory _$$PaginationModelImplCopyWith(_$PaginationModelImpl value,
          $Res Function(_$PaginationModelImpl) then) =
      __$$PaginationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? totalCount, int? perPage, int? maxPage, int? currentPage});
}

/// @nodoc
class __$$PaginationModelImplCopyWithImpl<$Res>
    extends _$PaginationModelCopyWithImpl<$Res, _$PaginationModelImpl>
    implements _$$PaginationModelImplCopyWith<$Res> {
  __$$PaginationModelImplCopyWithImpl(
      _$PaginationModelImpl _value, $Res Function(_$PaginationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? perPage = freezed,
    Object? maxPage = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_$PaginationModelImpl(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPage: freezed == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationModelImpl implements _PaginationModel {
  _$PaginationModelImpl(
      {this.totalCount, this.perPage, this.maxPage, this.currentPage});

  factory _$PaginationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationModelImplFromJson(json);

  @override
  final int? totalCount;
  @override
  final int? perPage;
  @override
  final int? maxPage;
  @override
  final int? currentPage;

  @override
  String toString() {
    return 'PaginationModel(totalCount: $totalCount, perPage: $perPage, maxPage: $maxPage, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationModelImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalCount, perPage, maxPage, currentPage);

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationModelImplCopyWith<_$PaginationModelImpl> get copyWith =>
      __$$PaginationModelImplCopyWithImpl<_$PaginationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationModelImplToJson(
      this,
    );
  }
}

abstract class _PaginationModel implements PaginationModel {
  factory _PaginationModel(
      {final int? totalCount,
      final int? perPage,
      final int? maxPage,
      final int? currentPage}) = _$PaginationModelImpl;

  factory _PaginationModel.fromJson(Map<String, dynamic> json) =
      _$PaginationModelImpl.fromJson;

  @override
  int? get totalCount;
  @override
  int? get perPage;
  @override
  int? get maxPage;
  @override
  int? get currentPage;

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationModelImplCopyWith<_$PaginationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
