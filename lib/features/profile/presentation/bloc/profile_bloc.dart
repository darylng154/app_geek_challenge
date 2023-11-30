import 'package:coding_challenge/features/profile/data/models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState>
{
  ProfileBloc() : super(ProfileInitialState())
  {
    on<UpdateName>(_updateUserFirstName);
    on<UpdatePhone>(_updateUserPhone);
    on<UpdateEmail>(_updateUserEmail);
    on<UpdateBio>(_updateUserBio);
  }

  void _updateUserFirstName(UpdateName event, Emitter<ProfileState> emit)
  {
    emit
    (
      ProfileUpdateState(state.user.copyWith(firstName: event.firstName, lastName: event.lastName))
    );
  }

  void _updateUserPhone(UpdatePhone event, Emitter<ProfileState> emit)
  {
    emit
    (
      ProfileUpdateState(state.user.copyWith(phone: event.phone))
    );
  }

  void _updateUserEmail(UpdateEmail event, Emitter<ProfileState> emit)
  {
    emit
    (
      ProfileUpdateState(state.user.copyWith(email: event.email))
    );
  }
  
  void _updateUserBio(UpdateBio event, Emitter<ProfileState> emit)
  {
    emit
    (
      ProfileUpdateState(state.user.copyWith(bio: event.bio))
    );
  }
}
