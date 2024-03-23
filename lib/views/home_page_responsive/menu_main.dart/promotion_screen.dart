import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/widgets/custom_promo_news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromotionSceen extends StatelessWidget {
  const PromotionSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: SingleChildScrollView(
        child: Column(
          children: [
            kSizeBoxFifty,
            Text("START YOUR JOURNEY.",
                style: TextStyle(
                    color: mainGreenColor,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold)),
            kSizeBoxTwenty,
            Center(
              child: Image.asset("assets/images/promoscreen.jpeg",
                  cacheHeight: 360, width: 500),
            ),
            kSizeBoxTen,
            Container(
              width: 135.w,
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                  "Unlock a thrilling gambling experience with Welcome Offer. Enjoy your first three deposit bonuses with No wagering requirements. Receive up to \$1.000 along with 100 Free Spins on slot game Crystal Queen.",
                  style: TextStyle(color: mainGreenColor, fontSize: 3.5.sp)),
            ),
            kSizeBoxTen,
            Text("thrilling gambling experience",
                style: TextStyle(color: whiteColor, fontSize: 4.sp)),
            kSizeBoxTen,
            Text("thrilling gambling experience",
                style: TextStyle(color: mainGreenColor, fontSize: 4.sp)),
            kSizeBoxTen,
            Text("thrilling gambling experience",
                style: TextStyle(color: whiteColor, fontSize: 4.sp)),
            kSizeBoxTen,
            Text("thrilling gambling experience",
                style: TextStyle(color: mainGreenColor, fontSize: 4.sp)),
            kSizeBoxTen,
            Text("thrilling gambling experience",
                style: TextStyle(color: whiteColor, fontSize: 4.sp)),
            kSizeBoxTen,
            Text("thrilling gambling experience",
                style: TextStyle(color: whiteColor, fontSize: 4.sp)),
            kSizeBoxTen,
            Text("thrilling gambling experience",
                style: TextStyle(color: whiteColor, fontSize: 4.sp)),
            kSizeBoxTen,
            Text("thrilling gambling experience",
                style: TextStyle(color: mainGreenColor, fontSize: 4.sp)),
            kSizeBoxTen,
            Container(
              width: 135.w,
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                  "Go to \"Deposit\" and click on \"Add Bonus\".Type Bonus code before making a deposit in \"empty space\" and click \"Activate Bonu\".Make a deposit and bonus will be added automatically to your balance.Min. deposit: CAD20 / \$20 / €20 / AUD20 / NOKc200. Max bet: 4\$.Make sure you read and understand all bonus T&C before claiming bonus",
                  style: TextStyle(color: mainGreenColor, fontSize: 4.sp)),
            ),
            kSizeBoxTen,
            TextButton(
                onPressed: () {},
                child: Text("Bonus Terms and Conditions",
                    style: TextStyle(color: mainGreenColor, fontSize: 4.sp))),
            kSizeBoxThirty,
            const PromoCustomPromotion(),
            kSizeBoxThirty
          ],
        ),
      ),
    );
  }
}
