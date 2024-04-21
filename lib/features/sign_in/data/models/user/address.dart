import 'package:equatable/equatable.dart';

import 'coordinates.dart';

class Address extends Equatable {
  final String? address;
  final String? city;
  final Coordinates? coordinates;
  final String? postalCode;
  final String? state;

  const Address({
    this.address,
    this.city,
    this.coordinates,
    this.postalCode,
    this.state,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        address: json['address'] as String?,
        city: json['city'] as String?,
        coordinates: json['coordinates'] == null
            ? null
            : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
        postalCode: json['postalCode'] as String?,
        state: json['state'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'address': address,
        'city': city,
        'coordinates': coordinates?.toJson(),
        'postalCode': postalCode,
        'state': state,
      };

  @override
  List<Object?> get props {
    return [
      address,
      city,
      coordinates,
      postalCode,
      state,
    ];
  }
}
