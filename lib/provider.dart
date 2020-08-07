import 'package:travelogram/user.dart';

class ProfileProvider1 {
  static Profile2 getProfile() {
    return Profile2(
      user: User(
          name: "Zaid H. Al-Taai",
          address: "Iraq - Samawah ",
      ),
      followers: 24,
      trips:31 ,
      bucketList:21 ,
    );
  }
}