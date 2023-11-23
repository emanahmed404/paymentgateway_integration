import 'package:checkoutapp/chechout/data/repository/checkout_repo_impl.dart';
import 'package:checkoutapp/chechout/presentation/controllers/stripe_payment_cubit.dart';
import 'package:checkoutapp/chechout/presentation/screens/payment_methods_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/global_widgets/custom_button.dart';
import '../widgets/cart_info_item.dart';
import '../widgets/total_price.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Expanded(
              child:
              Image(image: AssetImage('assets/images/basket_image.png'))),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoRow(
            title: "Order Subtotal",
            value: r"$42.97",
          ),
          const OrderInfoRow(
            title: "Discount",
            value: r"$0",
          ),
          const OrderInfoRow(
            title: "shipping",
            value: r"$8",
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(
              thickness: 2,
              height: 34,
            ),
          ),
          const TotalPrice(title: 'Total', value: r"$50.97"),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            title: 'Complete Payment',
            onTap: () {
              showModalBottomSheet(context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28)
                  ),
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => StripePaymentCubit(CheckoutRepoImpl()),
                      child: const PaymentMethodBottomSheet(),
                    );
                  });
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

