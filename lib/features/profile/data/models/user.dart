import 'package:equatable/equatable.dart';

class User extends Equatable
{
  // Nullable fields to allow editing one at a time in the Bloc
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? email;
  final String? bio;

  const User
  (
    {
      required this.firstName,
      required this.lastName,
      required this.phone,
      required this.email,
      required this.bio,
    }
  );

  const User.empty(): this
  (
    firstName: null,
    lastName: null,
    phone: null,
    email: null,
    bio: null
  );

  // Creates a new User object because fields are final
  User copyWith({String? firstName, String? lastName, String? phone, String? email, String? bio})
  {
    return User
    (
      firstName: firstName ?? this.firstName, 
      lastName: lastName ?? this.lastName, 
      phone: phone ?? this.phone, 
      email: email ?? this.email, 
      bio: bio ?? this.bio
    );
  }

  @override
  List<Object?> get props => [firstName, lastName, phone, email, bio];
}