import 'package:equatable/equatable.dart';

class PaymentIntentResponseModel extends Equatable {
   String? id;
   String? clientSecret;
   String? currency;
   int? amount;

   PaymentIntentResponseModel({
    this.id,
    this.clientSecret,
    this.currency,
    this.amount,
  });

  PaymentIntentResponseModel.fromJson(Map<String, dynamic> json)
  {
    id = json['id'];
    clientSecret=json['client_secret'];
    currency=json['currency'];
    amount= json['amount'];
  }


  @override
  List<Object> get props => [id!, clientSecret!, currency!, amount!];
}
