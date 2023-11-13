import 'package:checkoutapp/chechout/core/utils/styles.dart';
import 'package:checkoutapp/chechout/presentation/widgets/total_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'check_out_item_info.dart';
import 'credit_card_symbol.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffededed)),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              "Thank you!",
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text("Your transaction was successful", style: Styles.style20),
            const SizedBox(
              height: 42,
            ),
            const CheckOutItemInfo(title: "Date", info: "01/24/2023"),
            const SizedBox(
              height: 20,
            ),
            const CheckOutItemInfo(
              title: "Time",
              info: "10:15 AM",
            ),
            const SizedBox(
              height: 20,
            ),
            const CheckOutItemInfo(title: "To", info: 'Kamona '),
            const Divider(
              thickness: 2,
              height: 60,
            ),
            const TotalPrice(title: 'Total', value: r"$50.97"),
            const CreditCardSymbolInfo(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 64,
                ),
                Container(
                    width: 113,
                    height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1.50,
                        color:  Color(0xff34A853),
                      ),
                      borderRadius: BorderRadius.circular(15)
                    ),

                  ),
                  child:Center(
                    child:   Text(
                        "PAID",
                        style: Styles.style24.copyWith(color:  const Color(0xff34A853)),
                    ),
                  ),
                    )
              ],
            ),
            SizedBox(
              height:((MediaQuery.sizeOf(context).height * 0.20)/2)-29,

            ),
          ],
        ),
      ),
    );
  }
}
