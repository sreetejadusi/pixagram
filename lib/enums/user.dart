class User {
  User(
      {required this.name,
      required this.profile,
      required this.followers,
      required this.following,
      required this.pronoun,
      required this.location,
      required this.bio});
  final String name;
  final String profile;
  final int followers;
  final int following;
  final String pronoun;
  final String location;
  final String bio;
}
