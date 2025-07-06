import 'package:flutterappstartertemplate/core/scripts/text_script.dart';

import '../../domain/models/user_model.dart';

class UserDto {
  String? id,
      email,
      phone,
      accessToken,
      aud,
      confirmationSentAt,
      recoverySentAt,
      createdAt,
      confirmedAt,
      emailConfirmedAt,
      phoneConfirmedAt,
      lastSignInAt,
      status,
      updatedAt;

  Map<String, dynamic>? userMetadata;

  UserDto({
    required this.id,
    required this.email,
    required this.phone,
    required this.accessToken,
    required this.aud,
    required this.confirmationSentAt,
    required this.recoverySentAt,
    required this.createdAt,
    required this.confirmedAt,
    required this.emailConfirmedAt,
    required this.phoneConfirmedAt,
    required this.lastSignInAt,
    required this.status,
    required this.updatedAt,
    required this.userMetadata,
  });
}

class UserMetadata {
  String? email, sub;
  bool emailVerified = false, phoneVerified = false;

  UserMetadata({
    required this.email,
    required this.sub,
    required this.emailVerified,
    required this.phoneVerified,
  });
}

extension NonNullDTO on UserDto? {
  UserModel map() {
    if (this == null) {
      return UserModel(id: '', email: '', phone: '', accessToken: '', isVerified: true);
    }

    return UserModel(
      id: this!.id.value(),
      email: this!.email.value(),
      phone: this!.phone.value(),
      accessToken: this!.accessToken.value(),
      isVerified: this!.userMetadata?['email_verified'] ?? false,
    );
  }
}