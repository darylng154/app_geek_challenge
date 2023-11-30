part of 'profile_bloc.dart';

class ProfileState extends User
{
  User user;

  ProfileState
  (
    {
      required this.user,
    }
  ):  super(firstName: user.firstName, lastName: user.lastName, phone: user.phone, email: user.email, bio: user.bio);

  @override
  List<Object?> get props => [user];

  // overrides User.copyWith() for when we have a multiple / list of users instead of 1
  @override
  ProfileState copyWith({String? firstName, String? lastName, String? phone, String? email, String? bio})
  {
    return ProfileState
    (
      user: User
      (
        firstName: firstName ?? this.firstName, 
        lastName: lastName ?? this.lastName, 
        phone: phone ?? this.phone, 
        email: email ?? this.email, 
        bio: bio ?? this.bio
      ),
    );
  }
}

class ProfileInitialState extends ProfileState
{
  ProfileInitialState(): super(user: const User.empty());
}

class ProfileUpdateState extends ProfileState
{
  final User user; 

  ProfileUpdateState(this.user) : super(user: user);
}

