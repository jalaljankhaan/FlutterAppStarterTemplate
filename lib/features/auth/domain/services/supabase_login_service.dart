import 'dart:convert';

import 'package:portfolio/core/logger/logger.dart';
import 'package:portfolio/features/auth/data/dto/user_dto.dart';
import 'package:portfolio/features/auth/data/services/login_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/constants/routes.dart';

class SupabaseLoginServiceImpl implements LoginService {
  final Logger logger;

  final SupabaseClient _supabase = Supabase.instance.client;

  SupabaseLoginServiceImpl({required this.logger});

  @override
  Future<bool> login(
    final String email,
    final String password,
    final bool isNewUser,
  ) async {
    try {
      await _supabase.auth.signInWithOtp(
        email: email,
        emailRedirectTo: homeRoute,
        shouldCreateUser: isNewUser,
      );

      logger.log(
        "Supabase Login Service - loginWithMagicLink() - Link sent to $email",
      );
      return true;
    } catch (error) {
      logger.log(
        "Supabase Login Service - loginWithMagicLink() Exception - $error",
      );
      throw Exception("Unable to login due to $error");
    }
  }

  @override
  Future<void> loginWithGoogle() async {
    try {
      final isSuccessful = await _supabase.auth.signInWithOAuth(
        OAuthProvider.google,
        redirectTo: homeRoute,
      );
      logger.log("Supabase Login Service - loginWithGoogle() - $isSuccessful");
    } catch (error) {
      logger.log(
        "Supabase Login Service - loginWithGoogle() Exception - $error",
      );
      throw Exception("Unable to login due to $error");
    }
  }

  @override
  Future<void> loginWithApple() async {
    try {
      final isSuccessful = await _supabase.auth.signInWithOAuth(
        OAuthProvider.apple,
        redirectTo: homeRoute,
      );
      logger.log("Supabase Login Service - loginWithApple() - $isSuccessful");
    } catch (error) {
      logger.log(
        "Supabase Login Service - loginWithApple() Exception - $error",
      );
      throw Exception("Unable to login due to $error");
    }
  }

  @override
  Future<UserDto?> getLoggedInUser() async {
    try {
      final User? user = _supabase.auth.currentUser;
      logger.log(
        "Supabase Login Service - isLoggedIn() User Json - ${jsonEncode(user)}",
      );

      if (user == null) {
        logger.log(
          "Supabase Login Service - isLoggedIn() - User is not logged in",
        );
        return null;
      }
      logger.log("Supabase Login Service - isLoggedIn() - User is logged in");

      return UserDto(
        id: user.id,
        aud: user.aud,
        email: user.email,
        phone: user.phone,
        accessToken: _supabase.auth.currentSession?.accessToken,
        emailConfirmedAt: user.emailConfirmedAt,
        confirmationSentAt: user.confirmationSentAt,
        recoverySentAt: user.recoverySentAt,
        confirmedAt: user.confirmedAt,
        createdAt: user.createdAt,
        phoneConfirmedAt: user.phoneConfirmedAt,
        lastSignInAt: user.lastSignInAt,
        status: user.role,
        updatedAt: user.updatedAt,
        userMetadata: user.userMetadata,
      );
    } catch (error) {
      logger.log("Supabase Login Service - isLoggedIn() Exception - $error");
      throw Exception("Unable to login due to $error");
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _supabase.auth.signOut();
      logger.log("Supabase Login Service - logout() - Successfully logged out");
    } catch (error) {
      logger.log("Supabase Login Service - logout() Exception - $error");
      throw Exception("Unable to logout due to $error");
    }
  }
}