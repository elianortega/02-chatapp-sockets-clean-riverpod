// ignore_for_file: public_member_api_docs
import 'package:meta/meta.dart';

///Class that represent user
class User {
  /// User constructor
  User({
    @required this.uid,
    @required this.email,
    @required this.name,
    @required this.online,
  });

  final String uid;
  final String email;
  final String name;
  final bool online;
}
