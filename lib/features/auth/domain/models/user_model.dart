class UserModel {
  final String id, email, phone, accessToken;
  final bool isVerified;

  UserModel({
    required this.id,
    required this.email,
    required this.phone,
    required this.accessToken,
    required this.isVerified,
  });
}