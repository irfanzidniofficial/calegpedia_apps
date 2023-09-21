import 'package:meta/meta.dart';
import 'dart:convert';

class LoginResponseModel {
    final String accessToken;
    final String tokenType;
    final int expiresIn;
    final int expiresAt;
    final String refreshToken;
    final User user;

    LoginResponseModel({
        required this.accessToken,
        required this.tokenType,
        required this.expiresIn,
        required this.expiresAt,
        required this.refreshToken,
        required this.user,
    });

    factory LoginResponseModel.fromJson(String str) => LoginResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory LoginResponseModel.fromMap(Map<String, dynamic> json) => LoginResponseModel(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        expiresIn: json["expires_in"],
        expiresAt: json["expires_at"],
        refreshToken: json["refresh_token"],
        user: User.fromMap(json["user"]),
    );

    Map<String, dynamic> toMap() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "expires_in": expiresIn,
        "expires_at": expiresAt,
        "refresh_token": refreshToken,
        "user": user.toMap(),
    };
}

class User {
    final String id;
    final String aud;
    final String role;
    final String email;
    final DateTime emailConfirmedAt;
    final String phone;
    final DateTime confirmedAt;
    final DateTime lastSignInAt;
    final AppMetadata appMetadata;
    final UserMetadata userMetadata;
    final List<Identity> identities;
    final DateTime createdAt;
    final DateTime updatedAt;

    User({
        required this.id,
        required this.aud,
        required this.role,
        required this.email,
        required this.emailConfirmedAt,
        required this.phone,
        required this.confirmedAt,
        required this.lastSignInAt,
        required this.appMetadata,
        required this.userMetadata,
        required this.identities,
        required this.createdAt,
        required this.updatedAt,
    });

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        aud: json["aud"],
        role: json["role"],
        email: json["email"],
        emailConfirmedAt: DateTime.parse(json["email_confirmed_at"]),
        phone: json["phone"],
        confirmedAt: DateTime.parse(json["confirmed_at"]),
        lastSignInAt: DateTime.parse(json["last_sign_in_at"]),
        appMetadata: AppMetadata.fromMap(json["app_metadata"]),
        userMetadata: UserMetadata.fromMap(json["user_metadata"]),
        identities: List<Identity>.from(json["identities"].map((x) => Identity.fromMap(x))),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "aud": aud,
        "role": role,
        "email": email,
        "email_confirmed_at": emailConfirmedAt.toIso8601String(),
        "phone": phone,
        "confirmed_at": confirmedAt.toIso8601String(),
        "last_sign_in_at": lastSignInAt.toIso8601String(),
        "app_metadata": appMetadata.toMap(),
        "user_metadata": userMetadata.toMap(),
        "identities": List<dynamic>.from(identities.map((x) => x.toMap())),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

class AppMetadata {
    final String provider;
    final List<String> providers;

    AppMetadata({
        required this.provider,
        required this.providers,
    });

    factory AppMetadata.fromJson(String str) => AppMetadata.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AppMetadata.fromMap(Map<String, dynamic> json) => AppMetadata(
        provider: json["provider"],
        providers: List<String>.from(json["providers"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "provider": provider,
        "providers": List<dynamic>.from(providers.map((x) => x)),
    };
}

class Identity {
    final String id;
    final String userId;
    final IdentityData identityData;
    final String provider;
    final DateTime lastSignInAt;
    final DateTime createdAt;
    final DateTime updatedAt;

    Identity({
        required this.id,
        required this.userId,
        required this.identityData,
        required this.provider,
        required this.lastSignInAt,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Identity.fromJson(String str) => Identity.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Identity.fromMap(Map<String, dynamic> json) => Identity(
        id: json["id"],
        userId: json["user_id"],
        identityData: IdentityData.fromMap(json["identity_data"]),
        provider: json["provider"],
        lastSignInAt: DateTime.parse(json["last_sign_in_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "identity_data": identityData.toMap(),
        "provider": provider,
        "last_sign_in_at": lastSignInAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

class IdentityData {
    final String email;
    final String sub;

    IdentityData({
        required this.email,
        required this.sub,
    });

    factory IdentityData.fromJson(String str) => IdentityData.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory IdentityData.fromMap(Map<String, dynamic> json) => IdentityData(
        email: json["email"],
        sub: json["sub"],
    );

    Map<String, dynamic> toMap() => {
        "email": email,
        "sub": sub,
    };
}

class UserMetadata {
    UserMetadata();

    factory UserMetadata.fromJson(String str) => UserMetadata.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory UserMetadata.fromMap(Map<String, dynamic> json) => UserMetadata(
    );

    Map<String, dynamic> toMap() => {
    };
}
