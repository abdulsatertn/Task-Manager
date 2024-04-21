import 'package:equatable/equatable.dart';

class Hair extends Equatable {
  final String? color;
  final String? type;

  const Hair({this.color, this.type});

  factory Hair.fromJson(Map<String, dynamic> json) => Hair(
        color: json['color'] as String?,
        type: json['type'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'color': color,
        'type': type,
      };

  @override
  List<Object?> get props => [color, type];
}
