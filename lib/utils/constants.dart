import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color mainGreenColor = Color(0xFF00a54f);
const Color indigoColor = Color(0xFF6610f2);
const Color purpleColor = Color(0xFF6f42c1);
const Color pinkColor = Color(0xFFd63384);
const Color redColor = Color(0xFFdc3545);
const Color orangeColor = Color(0xFFfd7e14);
const Color yellowColor = Color(0xFFffc107);

const Color greenColor = Color(0xFF198754);
const Color tealColor = Color(0xFF20c997);
const Color cyanColor = Color(0xFF0dcaf0);
const Color whiteColor = Color(0xFFFFFFFF);
const Color grayColor = Color(0xFF6c757d);
const Color grayDarkColor = Color(0xFF343a40);

const Color gray100 = Color(0xFFf8f9fa);
const Color gray200 = Color(0xFFe9ecef);
const Color gray300 = Color(0xFFdee2e6);
const Color gray400 = Color(0xFFced4da);
const Color gray500 = Color(0xFFadb5bd);
const Color gray600 = Color(0xFF6c757d);
const Color gray700 = Color(0xFF495057);
const Color gray800 = Color(0xFF343a40);
const Color gray900 = Color(0xFF212529);

const Color primary = Color(0xFF0d6efd);
const Color secondary = Color(0xFF6c757d);
const Color success = Color(0xFF198754);
const Color info = Color(0xFF0dcaf0);
const Color warning = Color(0xFFffc107);

const Color danger = Color(0xFFdc3545);
const Color light = Color(0xFFdc3545);
const Color dark = Color(0xFF212529);

/* ************ Different spacing ************** */
final kSizeBoxFive = SizedBox(height: 5.h);
final kSizeBoxTen = SizedBox(height: 10.h);
final kSizeBoxFifteen = SizedBox(height: 15.h);
final kSizeBoxTwenty = SizedBox(height: 20.h);
final kSizeBoxTwentyF = SizedBox(height: 25.h);
final kSizeBoxThirty = SizedBox(height: 30.h);
final kSizeBoxThirtyF = SizedBox(height: 35.h);
final kSizeBoxFourty = SizedBox(height: 40.h);
final kSizeBoxFourtyF = SizedBox(height: 45.h);
final kSizeBoxFifty = SizedBox(height: 50.h);
final kSizeBoxFiftyF = SizedBox(height: 55.h);
final kSizeBoxSixty = SizedBox(height: 60.h);
final kSizeBoxSixtyF = SizedBox(height: 65.h);
final kSizeBoxSeventy = SizedBox(height: 70.h);

const imagesList = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl-E7PE9Eke47JQq-LljndgMYup4OAC5OCqw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6G6iERlSvl7H68Ds_dLG__A_qVQwbq-fFDQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcQ3Ed2GeF0jWl6daSG046LS6juOPy6AF7vA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThP3cs7GqyVE1Oo-ct3PGhJNLznKdrDx-NOw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcwt7OVdHCyswgE7A7HB-hTn4JSHAOe6SDpQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX-Vi9-_gdID4ZygQIAlNSaQlOTFNrvWq88w&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOoFvUJpWm4cxpmQHK8bE1yMrwPGDkg09WvzYL3Gmjkwb8hRgiavkZE4fVRtJhXWZHrpc&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4LKw0XmgFzOgtZuuDDJzCiFndfMg9T5d1IDsbVJCWHFBazh1mVeFcQwSlHht7DODQCsg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYvARmOV5syN5Mjs_nzzeC-ra7ULmYZhuq3w&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFGJK1IjcsO-WtZwNHk240A3dpZT82YDiaXg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWF5d4GhBZYf4_vOinBziESfnDg16hNcVGEQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl-E7PE9Eke47JQq-LljndgMYup4OAC5OCqw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcwt7OVdHCyswgE7A7HB-hTn4JSHAOe6SDpQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX-Vi9-_gdID4ZygQIAlNSaQlOTFNrvWq88w&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOoFvUJpWm4cxpmQHK8bE1yMrwPGDkg09WvzYL3Gmjkwb8hRgiavkZE4fVRtJhXWZHrpc&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4LKw0XmgFzOgtZuuDDJzCiFndfMg9T5d1IDsbVJCWHFBazh1mVeFcQwSlHht7DODQCsg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYvARmOV5syN5Mjs_nzzeC-ra7ULmYZhuq3w&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFGJK1IjcsO-WtZwNHk240A3dpZT82YDiaXg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFDm0GsotaDihaND8gHdswVhstolluIEAXew&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm8yFnY2vLpn70keUFM2Nb1Lm5GH8I0kGsHw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWF5d4GhBZYf4_vOinBziESfnDg16hNcVGEQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl-E7PE9Eke47JQq-LljndgMYup4OAC5OCqw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6G6iERlSvl7H68Ds_dLG__A_qVQwbq-fFDQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFGJK1IjcsO-WtZwNHk240A3dpZT82YDiaXg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFDm0GsotaDihaND8gHdswVhstolluIEAXew&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm8yFnY2vLpn70keUFM2Nb1Lm5GH8I0kGsHw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWF5d4GhBZYf4_vOinBziESfnDg16hNcVGEQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl-E7PE9Eke47JQq-LljndgMYup4OAC5OCqw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6G6iERlSvl7H68Ds_dLG__A_qVQwbq-fFDQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX-Vi9-_gdID4ZygQIAlNSaQlOTFNrvWq88w&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOoFvUJpWm4cxpmQHK8bE1yMrwPGDkg09WvzYL3Gmjkwb8hRgiavkZE4fVRtJhXWZHrpc&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4LKw0XmgFzOgtZuuDDJzCiFndfMg9T5d1IDsbVJCWHFBazh1mVeFcQwSlHht7DODQCsg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYvARmOV5syN5Mjs_nzzeC-ra7ULmYZhuq3w&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFGJK1IjcsO-WtZwNHk240A3dpZT82YDiaXg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFDm0GsotaDihaND8gHdswVhstolluIEAXew&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm8yFnY2vLpn70keUFM2Nb1Lm5GH8I0kGsHw&usqp=CAU",
];

const promoImagesList = [
  "assets/images/promoscreen.jpeg",
  "assets/images/cashback.jpeg",
  "assets/images/dailycashback.jpeg",
  "assets/images/slotbattle.png",
  "assets/images/exclusivebattle.png",
  "assets/images/extrafreespin.jpeg",
  "assets/images/weekenddeposit.jpeg"
];
const promoTextsList = [
  "Start your journey.",
  "Crypto Accepted Here.",
  "Place your Bets.",
  "Relax Gaming Slot Battle Tournament.",
  "Pragmatic Play Slot Battle Tournament.",
  "Every Wednesday.",
  "Boost your Weekends."
];
const whatsNewImagesList = [
  "assets/images/barrel.png",
  "assets/images/bigbite.png",
  "assets/images/deday.png",
  "assets/images/devil.png",
  "assets/images/bestbonus.png",
  "assets/images/cartfor.png",
  "assets/images/goodluck.png",
  "assets/images/megamoney.png",
  "assets/images/relaxgame.png",
  "assets/images/saints.png",
  "assets/images/reto.png",
];
const whatsNewTextsList = [
  "Start your journey.",
  "Crypto Accepted Here.",
  "Place your Bets.",
  "Relax Gaming Slot Battle Tournament.",
  "Pragmatic Play Slot Battle Tournament.",
  "Every Wednesday.",
  "Boost your Weekends."
];
