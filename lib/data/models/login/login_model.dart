import 'dart:convert';
import 'package:kafiil_task/domain/entities/login/login_entity.dart';

class LoginModel extends LoginEntity {
  const LoginModel({
    required super.firstName,
    required super.lastName,
    required super.about,
    required super.tags,
    required super.favoriteSocialMedia,
    required super.salary,
    required super.email,
    required super.birthDate,
    required super.avatar,
  });

  LoginEntity copyWith({
    String? firstName,
    String? lastName,
    String? about,
    List? tags,
    List? favoriteSocialMedia,
    double? salary,
    String? email,
    String? birthDate,
    String? avatar,
  }) {
    return LoginEntity(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      about: about ?? this.about,
      tags: tags ?? this.tags,
      favoriteSocialMedia: favoriteSocialMedia ?? this.favoriteSocialMedia,
      salary: salary ?? this.salary,
      email: email ?? this.email,
      birthDate: birthDate ?? this.birthDate,
      avatar: avatar ?? this.avatar,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'first_name': firstName});
    result.addAll({'last_name': lastName});
    result.addAll({'about': about});
    result.addAll({'tags': tags});
    result.addAll({'favorite_social_media': favoriteSocialMedia});
    result.addAll({'salary': salary});
    result.addAll({'email': email});
    result.addAll({'birth_date': birthDate});
    result.addAll({'avatar': avatar});

    return result;
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      firstName: map['first_name'] ?? '',
      lastName: map['last_name'] ?? '',
      about: map['about'] ?? '',
      tags: List.from(map['tags']),
      favoriteSocialMedia: List.from(map['favorite_social_media']),
      salary: map['salary']?.toDouble() ?? 0.0,
      email: map['email'] ?? '',
      birthDate: map['birth_date'] ?? '',
      avatar: map['avatar'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginModel.fromJson(String source) =>
      LoginModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'LoginModel(firstName: $firstName, lastName: $lastName, about: $about, tags: $tags, favoriteSocialMedia: $favoriteSocialMedia, salary: $salary, email: $email, birthDate: $birthDate, avatar: $avatar)';
  }
}
