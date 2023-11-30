# coding_challenge

## Description
Create a mobile application that appears to have the functionality of a profile page. Data does not need to be saved to a database, but the application should appear to function as expected until refresh/restarted. Allow for users to edit their profile information including: name, number, email, and bio. Use the provided UI as a guide: https://xd.adobe.com/view/58778ee1-0bc4-40d9-55fb-cea5b22ab1c8-2e46/ 

## Running the Program
After cloning the repository:
1. Change the directory to 'app_geek_challenge' folder with `cd app_geek_challenge`
2. Ensure all dependencies are installed with `flutter pub get`
3. Run the application with `flutter run`

## Packages Used
- `extended_masked_text`: formatting String phone number to include parentheses and dashes.
- `flutter_bloc`: state management library to connect the Profile data model to the Frontend Widgets. 
- `equatable`: helps with object comparison (==) by comparing values rather than references.
- `bloc_test`: testing library for test driven development with BLoC