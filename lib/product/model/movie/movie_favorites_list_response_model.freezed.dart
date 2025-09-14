// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_favorites_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieFavoritesListResponseModel _$MovieFavoritesListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MovieFavoritesListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MovieFavoritesListResponseModel {
  BaseResponseModel? get response => throw _privateConstructorUsedError;
  List<MovieModel?>? get data => throw _privateConstructorUsedError;

  /// Serializes this MovieFavoritesListResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieFavoritesListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieFavoritesListResponseModelCopyWith<MovieFavoritesListResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieFavoritesListResponseModelCopyWith<$Res> {
  factory $MovieFavoritesListResponseModelCopyWith(
          MovieFavoritesListResponseModel value,
          $Res Function(MovieFavoritesListResponseModel) then) =
      _$MovieFavoritesListResponseModelCopyWithImpl<$Res,
          MovieFavoritesListResponseModel>;
  @useResult
  $Res call({BaseResponseModel? response, List<MovieModel?>? data});

  $BaseResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class _$MovieFavoritesListResponseModelCopyWithImpl<$Res,
        $Val extends MovieFavoritesListResponseModel>
    implements $MovieFavoritesListResponseModelCopyWith<$Res> {
  _$MovieFavoritesListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieFavoritesListResponseModel
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
              as List<MovieModel?>?,
    ) as $Val);
  }

  /// Create a copy of MovieFavoritesListResponseModel
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
}

/// @nodoc
abstract class _$$MovieFavoritesListResponseModelImplCopyWith<$Res>
    implements $MovieFavoritesListResponseModelCopyWith<$Res> {
  factory _$$MovieFavoritesListResponseModelImplCopyWith(
          _$MovieFavoritesListResponseModelImpl value,
          $Res Function(_$MovieFavoritesListResponseModelImpl) then) =
      __$$MovieFavoritesListResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseResponseModel? response, List<MovieModel?>? data});

  @override
  $BaseResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class __$$MovieFavoritesListResponseModelImplCopyWithImpl<$Res>
    extends _$MovieFavoritesListResponseModelCopyWithImpl<$Res,
        _$MovieFavoritesListResponseModelImpl>
    implements _$$MovieFavoritesListResponseModelImplCopyWith<$Res> {
  __$$MovieFavoritesListResponseModelImplCopyWithImpl(
      _$MovieFavoritesListResponseModelImpl _value,
      $Res Function(_$MovieFavoritesListResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieFavoritesListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MovieFavoritesListResponseModelImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponseModel?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MovieModel?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieFavoritesListResponseModelImpl
    implements _MovieFavoritesListResponseModel {
  _$MovieFavoritesListResponseModelImpl(
      {this.response, final List<MovieModel?>? data})
      : _data = data;

  factory _$MovieFavoritesListResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MovieFavoritesListResponseModelImplFromJson(json);

  @override
  final BaseResponseModel? response;
  final List<MovieModel?>? _data;
  @override
  List<MovieModel?>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieFavoritesListResponseModel(response: $response, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieFavoritesListResponseModelImpl &&
            (identical(other.response, response) ||
                other.response == response) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, response, const DeepCollectionEquality().hash(_data));

  /// Create a copy of MovieFavoritesListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieFavoritesListResponseModelImplCopyWith<
          _$MovieFavoritesListResponseModelImpl>
      get copyWith => __$$MovieFavoritesListResponseModelImplCopyWithImpl<
          _$MovieFavoritesListResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieFavoritesListResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MovieFavoritesListResponseModel
    implements MovieFavoritesListResponseModel {
  factory _MovieFavoritesListResponseModel(
      {final BaseResponseModel? response,
      final List<MovieModel?>? data}) = _$MovieFavoritesListResponseModelImpl;

  factory _MovieFavoritesListResponseModel.fromJson(Map<String, dynamic> json) =
      _$MovieFavoritesListResponseModelImpl.fromJson;

  @override
  BaseResponseModel? get response;
  @override
  List<MovieModel?>? get data;

  /// Create a copy of MovieFavoritesListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieFavoritesListResponseModelImplCopyWith<
          _$MovieFavoritesListResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
