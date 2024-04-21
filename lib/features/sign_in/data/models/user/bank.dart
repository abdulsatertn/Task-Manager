import 'package:equatable/equatable.dart';

class Bank extends Equatable {
  final String? cardExpire;
  final String? cardNumber;
  final String? cardType;
  final String? currency;
  final String? iban;

  const Bank({
    this.cardExpire,
    this.cardNumber,
    this.cardType,
    this.currency,
    this.iban,
  });

  factory Bank.fromJson(Map<String, dynamic> json) => Bank(
        cardExpire: json['cardExpire'] as String?,
        cardNumber: json['cardNumber'] as String?,
        cardType: json['cardType'] as String?,
        currency: json['currency'] as String?,
        iban: json['iban'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'cardExpire': cardExpire,
        'cardNumber': cardNumber,
        'cardType': cardType,
        'currency': currency,
        'iban': iban,
      };

  @override
  List<Object?> get props {
    return [
      cardExpire,
      cardNumber,
      cardType,
      currency,
      iban,
    ];
  }
}
