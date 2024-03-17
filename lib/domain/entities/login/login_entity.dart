import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  final String firstName;
  final String lastName;
  final String about;
  final List tags;
  final List favoriteSocialMedia;
  final double salary;
  final String email;
  final String birthDate;
  final String avatar;

  const LoginEntity({
    required this.firstName,
    required this.lastName,
    required this.about,
    required this.tags,
    required this.favoriteSocialMedia,
    required this.salary,
    required this.email,
    required this.birthDate,
    required this.avatar,
  });

  @override
  List<Object> get props {
    return [
      firstName,
      lastName,
      about,
      tags,
      favoriteSocialMedia,
      salary,
      email,
      birthDate,
      avatar,
    ];
  }
}
