import 'package:equatable/equatable.dart';

import 'user.dart';

class User extends Equatable {
  final List<User>? users;
  final int? total;
  final int? skip;
  final int? limit;

  const User({this.users, this.total, this.skip, this.limit});

  factory User.fromJson(Map<String, dynamic> json) => User(
        users: (json['users'] as List<dynamic>?)
            ?.map((e) => User.fromJson(e as Map<String, dynamic>))
            .toList(),
        total: json['total'] as int?,
        skip: json['skip'] as int?,
        limit: json['limit'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'users': users?.map((e) => e.toJson()).toList(),
        'total': total,
        'skip': skip,
        'limit': limit,
      };

  @override
  List<Object?> get props => [users, total, skip, limit];
}
