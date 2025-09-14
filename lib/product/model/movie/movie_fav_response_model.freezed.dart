// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_fav_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieFavResponseModel _$MovieFavResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MovieFavResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MovieFavResponseModel {
  BaseResponseModel? get response => throw _privateConstructorUsedError;
  MovieFavDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieFavResponseModelCopyWith<MovieFavResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieFavResponseModelCopyWith<$Res> {
  factory $MovieFavResponseModelCopyWith(MovieFavResponseModel value,
          $Res Function(MovieFavResponseModel) then) =
      _$MovieFavResponseModelCopyWithImpl<$Res, MovieFavResponseModel>;
  @useResult
  $Res call({BaseResponseModel? response, MovieFavDataModel? data});

  $BaseResponseModelCopyWith<$Res>? get response;
  $MovieFavDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$MovieFavResponseModelCopyWithImpl<$Res,
        $Val extends MovieFavResponseModel>
    implements $MovieFavResponseModelCopyWith<$Res> {
  _$MovieFavResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as MovieFavDataModel?,
    ) as $Val);
  }

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

  @override
  @pragma('vm:prefer-inline')
  $MovieFavDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MovieFavDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieFavResponseModelImplCopyWith<$Res>
    implements $MovieFavResponseModelCopyWith<$Res> {
  factory _$$MovieFavResponseModelImplCopyWith(
          _$MovieFavResponseModelImpl value,
          $Res Function(_$MovieFavResponseModelImpl) then) =
      __$$MovieFavResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseResponseModel? response, MovieFavDataModel? data});

  @override
  $BaseResponseModelCopyWith<$Res>? get response;
  @override
  $MovieFavDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$MovieFavResponseModelImplCopyWithImpl<$Res>
    extends _$MovieFavResponseModelCopyWithImpl<$Res,
        _$MovieFavResponseModelImpl>
    implements _$$MovieFavResponseModelImplCopyWith<$Res> {
  __$$MovieFavResponseModelImplCopyWithImpl(_$MovieFavResponseModelImpl _value,
      $Res Function(_$MovieFavResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MovieFavResponseModelImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponseModel?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MovieFavDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieFavResponseModelImpl implements _MovieFavResponseModel {
  _$MovieFavResponseModelImpl({this.response, this.data});

  factory _$MovieFavResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieFavResponseModelImplFromJson(json);

  @override
  final BaseResponseModel? response;
  @override
  final MovieFavDataModel? data;

  @override
  String toString() {
    return 'MovieFavResponseModel(response: $response, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieFavResponseModelImpl &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, response, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieFavResponseModelImplCopyWith<_$MovieFavResponseModelImpl>
      get copyWith => __$$MovieFavResponseModelImplCopyWithImpl<
          _$MovieFavResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieFavResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MovieFavResponseModel implements MovieFavResponseModel {
  factory _MovieFavResponseModel(
      {final BaseResponseModel? response,
      final MovieFavDataModel? data}) = _$MovieFavResponseModelImpl;

  factory _MovieFavResponseModel.fromJson(Map<String, dynamic> json) =
      _$MovieFavResponseModelImpl.fromJson;

  @override
  BaseResponseModel? get response;
  @override
  MovieFavDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$MovieFavResponseModelImplCopyWith<_$MovieFavResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MovieFavDataModel _$MovieFavDataModelFromJson(Map<String, dynamic> json) {
  return _MovieFavDataModel.fromJson(json);
}

/// @nodoc
mixin _$MovieFavDataModel {
  MovieModel? get movie => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieFavDataModelCopyWith<MovieFavDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieFavDataModelCopyWith<$Res> {
  factory $MovieFavDataModelCopyWith(
          MovieFavDataModel value, $Res Function(MovieFavDataModel) then) =
      _$MovieFavDataModelCopyWithImpl<$Res, MovieFavDataModel>;
  @useResult
  $Res call({MovieModel? movie, String? action});

  $MovieModelCopyWith<$Res>? get movie;
}

/// @nodoc
class _$MovieFavDataModelCopyWithImpl<$Res, $Val extends MovieFavDataModel>
    implements $MovieFavDataModelCopyWith<$Res> {
  _$MovieFavDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieModel?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieModelCopyWith<$Res>? get movie {
    if (_value.movie == null) {
      return null;
    }

    return $MovieModelCopyWith<$Res>(_value.movie!, (value) {
      return _then(_value.copyWith(movie: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieFavDataModelImplCopyWith<$Res>
    implements $MovieFavDataModelCopyWith<$Res> {
  factory _$$MovieFavDataModelImplCopyWith(_$MovieFavDataModelImpl value,
          $Res Function(_$MovieFavDataModelImpl) then) =
      __$$MovieFavDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MovieModel? movie, String? action});

  @override
  $MovieModelCopyWith<$Res>? get movie;
}

/// @nodoc
class __$$MovieFavDataModelImplCopyWithImpl<$Res>
    extends _$MovieFavDataModelCopyWithImpl<$Res, _$MovieFavDataModelImpl>
    implements _$$MovieFavDataModelImplCopyWith<$Res> {
  __$$MovieFavDataModelImplCopyWithImpl(_$MovieFavDataModelImpl _value,
      $Res Function(_$MovieFavDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = freezed,
    Object? action = freezed,
  }) {
    return _then(_$MovieFavDataModelImpl(
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieModel?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieFavDataModelImpl implements _MovieFavDataModel {
  _$MovieFavDataModelImpl({this.movie, this.action});

  factory _$MovieFavDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieFavDataModelImplFromJson(json);

  @override
  final MovieModel? movie;
  @override
  final String? action;

  @override
  String toString() {
    return 'MovieFavDataModel(movie: $movie, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieFavDataModelImpl &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, movie, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieFavDataModelImplCopyWith<_$MovieFavDataModelImpl> get copyWith =>
      __$$MovieFavDataModelImplCopyWithImpl<_$MovieFavDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieFavDataModelImplToJson(
      this,
    );
  }
}

abstract class _MovieFavDataModel implements MovieFavDataModel {
  factory _MovieFavDataModel({final MovieModel? movie, final String? action}) =
      _$MovieFavDataModelImpl;

  factory _MovieFavDataModel.fromJson(Map<String, dynamic> json) =
      _$MovieFavDataModelImpl.fromJson;

  @override
  MovieModel? get movie;
  @override
  String? get action;
  @override
  @JsonKey(ignore: true)
  _$$MovieFavDataModelImplCopyWith<_$MovieFavDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
