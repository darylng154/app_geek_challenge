part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable
{
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class LoadUser extends ProfileEvent
{
  User user;

  LoadUser(this.user);

  @override
  List<Object> get props => [user];
}

class UpdateName extends ProfileEvent
{
  final String firstName;
  final String lastName;

  const UpdateName(this.firstName, this.lastName);

  @override
  List<Object> get props => [firstName, lastName];
}

class UpdatePhone extends ProfileEvent
{
  final String phone;

  const UpdatePhone(this.phone);

  @override
  List<Object> get props => [phone];
}

class UpdateEmail extends ProfileEvent
{
  final String email;

  const UpdateEmail(this.email);

  @override
  List<Object> get props => [email];
}

class UpdateBio extends ProfileEvent
{
  final String bio;

  const UpdateBio(this.bio);

  @override
  List<Object> get props => [bio];
}