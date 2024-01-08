// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginStatus {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  AuthAlertMessage get alertMessage => throw _privateConstructorUsedError;
  bool get isButtonActive => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStatusCopyWith<LoginStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStatusCopyWith<$Res> {
  factory $LoginStatusCopyWith(
          LoginStatus value, $Res Function(LoginStatus) then) =
      _$LoginStatusCopyWithImpl<$Res, LoginStatus>;
  @useResult
  $Res call(
      {String username,
      String password,
      AuthAlertMessage alertMessage,
      bool isButtonActive,
      bool isLoading});
}

/// @nodoc
class _$LoginStatusCopyWithImpl<$Res, $Val extends LoginStatus>
    implements $LoginStatusCopyWith<$Res> {
  _$LoginStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? alertMessage = null,
    Object? isButtonActive = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      alertMessage: null == alertMessage
          ? _value.alertMessage
          : alertMessage // ignore: cast_nullable_to_non_nullable
              as AuthAlertMessage,
      isButtonActive: null == isButtonActive
          ? _value.isButtonActive
          : isButtonActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStatusImplCopyWith<$Res>
    implements $LoginStatusCopyWith<$Res> {
  factory _$$LoginStatusImplCopyWith(
          _$LoginStatusImpl value, $Res Function(_$LoginStatusImpl) then) =
      __$$LoginStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String password,
      AuthAlertMessage alertMessage,
      bool isButtonActive,
      bool isLoading});
}

/// @nodoc
class __$$LoginStatusImplCopyWithImpl<$Res>
    extends _$LoginStatusCopyWithImpl<$Res, _$LoginStatusImpl>
    implements _$$LoginStatusImplCopyWith<$Res> {
  __$$LoginStatusImplCopyWithImpl(
      _$LoginStatusImpl _value, $Res Function(_$LoginStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? alertMessage = null,
    Object? isButtonActive = null,
    Object? isLoading = null,
  }) {
    return _then(_$LoginStatusImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      alertMessage: null == alertMessage
          ? _value.alertMessage
          : alertMessage // ignore: cast_nullable_to_non_nullable
              as AuthAlertMessage,
      isButtonActive: null == isButtonActive
          ? _value.isButtonActive
          : isButtonActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStatusImpl implements _LoginStatus {
  _$LoginStatusImpl(
      {this.username = '',
      this.password = '',
      this.alertMessage = AuthAlertMessage.none,
      this.isButtonActive = false,
      this.isLoading = false});

  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final AuthAlertMessage alertMessage;
  @override
  @JsonKey()
  final bool isButtonActive;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'LoginStatus(username: $username, password: $password, alertMessage: $alertMessage, isButtonActive: $isButtonActive, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStatusImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.alertMessage, alertMessage) ||
                other.alertMessage == alertMessage) &&
            (identical(other.isButtonActive, isButtonActive) ||
                other.isButtonActive == isButtonActive) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, username, password, alertMessage, isButtonActive, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStatusImplCopyWith<_$LoginStatusImpl> get copyWith =>
      __$$LoginStatusImplCopyWithImpl<_$LoginStatusImpl>(this, _$identity);
}

abstract class _LoginStatus implements LoginStatus {
  factory _LoginStatus(
      {final String username,
      final String password,
      final AuthAlertMessage alertMessage,
      final bool isButtonActive,
      final bool isLoading}) = _$LoginStatusImpl;

  @override
  String get username;
  @override
  String get password;
  @override
  AuthAlertMessage get alertMessage;
  @override
  bool get isButtonActive;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$LoginStatusImplCopyWith<_$LoginStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
