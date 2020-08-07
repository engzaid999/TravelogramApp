class User {
  String name;
  String address;

  User({this.name, this.address});
}

class Profile2 {
  User user;
  int followers, trips, bucketList;

  Profile2({this.user, this.followers, this.trips, this.bucketList});
}
