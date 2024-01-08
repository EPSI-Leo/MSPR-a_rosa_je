import 'package:arosa_je/modules/auth/login/model/auth_alert_message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_status.freezed.dart';

@freezed
class LoginStatus with _$LoginStatus {
  factory LoginStatus({
    @Default('') String username,
    @Default('') String password,
    @Default(AuthAlertMessage.none) AuthAlertMessage alertMessage,
    @Default(false) bool isButtonActive,
    @Default(false) bool isLoading,
  }) = _LoginStatus;
}
