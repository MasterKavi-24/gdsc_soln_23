// Create an user class

class User {
  final String username;
  final String password;
  final String profilePicture;
  final String bio;
  final String email;
  final String phone;
  final List<String> savedPosts;

  User({
    required this.username,
    required this.password,
    required this.profilePicture,
    required this.bio,
    required this.email,
    required this.phone,
    required this.savedPosts,
  });

}