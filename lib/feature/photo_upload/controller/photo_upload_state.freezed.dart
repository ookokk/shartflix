// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_upload_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhotoUploadState {
  File? get image => throw _privateConstructorUsedError;
  bool get isImagePicked => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isImageUploaded => throw _privateConstructorUsedError;

  /// Create a copy of PhotoUploadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoUploadStateCopyWith<PhotoUploadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoUploadStateCopyWith<$Res> {
  factory $PhotoUploadStateCopyWith(
          PhotoUploadState value, $Res Function(PhotoUploadState) then) =
      _$PhotoUploadStateCopyWithImpl<$Res, PhotoUploadState>;
  @useResult
  $Res call(
      {File? image, bool isImagePicked, bool isLoading, bool isImageUploaded});
}

/// @nodoc
class _$PhotoUploadStateCopyWithImpl<$Res, $Val extends PhotoUploadState>
    implements $PhotoUploadStateCopyWith<$Res> {
  _$PhotoUploadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoUploadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? isImagePicked = null,
    Object? isLoading = null,
    Object? isImageUploaded = null,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      isImagePicked: null == isImagePicked
          ? _value.isImagePicked
          : isImagePicked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageUploaded: null == isImageUploaded
          ? _value.isImageUploaded
          : isImageUploaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoUploadStateImplCopyWith<$Res>
    implements $PhotoUploadStateCopyWith<$Res> {
  factory _$$PhotoUploadStateImplCopyWith(_$PhotoUploadStateImpl value,
          $Res Function(_$PhotoUploadStateImpl) then) =
      __$$PhotoUploadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {File? image, bool isImagePicked, bool isLoading, bool isImageUploaded});
}

/// @nodoc
class __$$PhotoUploadStateImplCopyWithImpl<$Res>
    extends _$PhotoUploadStateCopyWithImpl<$Res, _$PhotoUploadStateImpl>
    implements _$$PhotoUploadStateImplCopyWith<$Res> {
  __$$PhotoUploadStateImplCopyWithImpl(_$PhotoUploadStateImpl _value,
      $Res Function(_$PhotoUploadStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoUploadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? isImagePicked = null,
    Object? isLoading = null,
    Object? isImageUploaded = null,
  }) {
    return _then(_$PhotoUploadStateImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      isImagePicked: null == isImagePicked
          ? _value.isImagePicked
          : isImagePicked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageUploaded: null == isImageUploaded
          ? _value.isImageUploaded
          : isImageUploaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PhotoUploadStateImpl implements _PhotoUploadState {
  _$PhotoUploadStateImpl(
      {this.image,
      this.isImagePicked = false,
      this.isLoading = false,
      this.isImageUploaded = false});

  @override
  final File? image;
  @override
  @JsonKey()
  final bool isImagePicked;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isImageUploaded;

  @override
  String toString() {
    return 'PhotoUploadState(image: $image, isImagePicked: $isImagePicked, isLoading: $isLoading, isImageUploaded: $isImageUploaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoUploadStateImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isImagePicked, isImagePicked) ||
                other.isImagePicked == isImagePicked) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isImageUploaded, isImageUploaded) ||
                other.isImageUploaded == isImageUploaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, image, isImagePicked, isLoading, isImageUploaded);

  /// Create a copy of PhotoUploadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoUploadStateImplCopyWith<_$PhotoUploadStateImpl> get copyWith =>
      __$$PhotoUploadStateImplCopyWithImpl<_$PhotoUploadStateImpl>(
          this, _$identity);
}

abstract class _PhotoUploadState implements PhotoUploadState {
  factory _PhotoUploadState(
      {final File? image,
      final bool isImagePicked,
      final bool isLoading,
      final bool isImageUploaded}) = _$PhotoUploadStateImpl;

  @override
  File? get image;
  @override
  bool get isImagePicked;
  @override
  bool get isLoading;
  @override
  bool get isImageUploaded;

  /// Create a copy of PhotoUploadState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoUploadStateImplCopyWith<_$PhotoUploadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
