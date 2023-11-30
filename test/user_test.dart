import 'package:coding_challenge/features/profile/data/models/user.dart';
import 'package:flutter_test/flutter_test.dart';

void main()
{
  test("Create empty user", () 
  {
    User user = User.empty();

    expect(user, const User(firstName: null, lastName: null, phone: null, email: null, bio: null));
  });

  test("Modify Single User field with copyWith()", ()
  {
    User user = User.empty();
    user = user.copyWith(firstName: "Micah");

    expect(user, const User(firstName: "Micah", lastName: null, phone: null, email: null, bio: null));
  });

  test("Modify All Empty User fields with copyWith()", ()
  {
    User user = User.empty();
    user = user.copyWith(firstName: "Micah", lastName: "Smith", phone: "(208)206-5039", email: "micahsmith@gmail.com", bio: "Hi my name is Micah Smith....");

    expect(user, const User(firstName: "Micah", lastName: "Smith", phone: "(208)206-5039", email: "micahsmith@gmail.com", bio: "Hi my name is Micah Smith...."));
  });

  test("Modify All Non-Empty User fields with copyWith()", ()
  {
    User user = const User(firstName: "first", lastName: "last", phone: "(123)-456-7890", email: "fake@email.com", bio: "Temp bio");
    user = user.copyWith(firstName: "Micah", lastName: "Smith", phone: "(208)206-5039", email: "micahsmith@gmail.com", bio: "Hi my name is Micah Smith....");

    expect(user, const User(firstName: "Micah", lastName: "Smith", phone: "(208)206-5039", email: "micahsmith@gmail.com", bio: "Hi my name is Micah Smith...."));
  });
}