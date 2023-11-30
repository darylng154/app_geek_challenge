import 'dart:js';

import 'package:coding_challenge/features/profile/data/models/user.dart';
import 'package:coding_challenge/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main()
{
  late ProfileBloc profileBloc;

  setUp(()
  {
    profileBloc = ProfileBloc();
  });

  const User empty = User(firstName: null, lastName: null, phone: null, email: null, bio: null);
  const User user = User(firstName: "Micah", lastName: "Smith", phone: "(208)206-5039", email: "micahsmith@gmail.com", bio: "Hi my name is Micah Smith....");
  const User name = User(firstName: "Micah", lastName: "Smith", phone: null, email: null, bio: null);
  const User phone = User(firstName: null, lastName: null, phone: "(208)206-5039", email: null, bio: null);
  const User email = User(firstName: null, lastName: null, phone: null, email: "micahsmith@gmail.com", bio: null);
  const User bio = User(firstName: null, lastName: null, phone: null, email: null, bio: "Hi my name is Micah Smith....");

  test("inital Bloc state should be inital Profile state", () 
  {
    expect(profileBloc.state, ProfileInitialState());
  });

  test("inital Profile state should be empty User", () 
  {
    expect(profileBloc.state.user , empty);
  });

  blocTest<ProfileBloc, ProfileState>
  (
    "testing state when updating name",
    build: () => profileBloc,
    act: (bloc) => bloc.add(const UpdateName("Micah", "Smith")),
    expect: () => <ProfileState>[ProfileUpdateState(name)],
  );

  blocTest<ProfileBloc, ProfileState>
  (
    "testing state when updating phone name",
    build: () => profileBloc,
    act: (bloc) => bloc.add(const UpdatePhone("(208)206-5039")),
    expect: () => <ProfileState>[ProfileUpdateState(phone)],
  );

  blocTest<ProfileBloc, ProfileState>
  (
    "testing state when updating email name",
    build: () => profileBloc,
    act: (bloc) => bloc.add(const UpdateEmail("micahsmith@gmail.com")),
    expect: () => <ProfileState>[ProfileUpdateState(email)],
  );

  blocTest<ProfileBloc, ProfileState>
  (
    "testing state when updating bio name",
    build: () => profileBloc,
    act: (bloc) => bloc.add(const UpdateBio("Hi my name is Micah Smith....")),
    expect: () => <ProfileState>[ProfileUpdateState(bio)],
  );
}