import 'package:ferry_easy/source/shared/app_colors.dart';
import 'package:ferry_easy/source/shared/styles.dart';
import 'package:flutter/material.dart';

export 'package:flutter/material.dart';
export 'ferry_easy_text.dart';

class FEText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final TextStyle style;

  //Onboarding

  const FEText.onBoardingHead(this.text, {super.key, this.textAlign})
      : style = onboardingHead;
  const FEText.onBoardingSub(this.text, {super.key, this.textAlign})
      : style = onboardingSub;

  //Dashboard

  const FEText.dashTextTitle(this.text, {super.key, this.textAlign})
      : style = dashTextTitle;
  const FEText.dashActiveFerries(this.text, {super.key, this.textAlign})
      : style = dashActiveFerries;
  const FEText.dashFerryName(this.text, {super.key, this.textAlign})
      : style = dashFerryName;
  const FEText.dashDestination(this.text, {super.key, this.textAlign})
      : style = dashDestination;
  const FEText.dashEta(this.text, {super.key, this.textAlign})
      : style = dashEta;
  const FEText.dashEtaTime(this.text, {super.key, this.textAlign})
      : style = dashEtaTime;
  const FEText.dashCdTimer(this.text, {super.key, this.textAlign})
      : style = dashCdTimer;

  //Side Bar
  const FEText.sidebarLNHeader(this.text, {super.key, this.textAlign})
      : style = sidebarLNHeader;
  const FEText.sidebarFNHeader(this.text, {super.key, this.textAlign})
      : style = sidebarFNHeader;
  const FEText.sidebarChoice(this.text, {super.key, this.textAlign})
      : style = sidebarChoice;

  //Profile

  const FEText.profileLNHeader(this.text, {super.key, this.textAlign})
      : style = profileLNHeader;
  const FEText.profileFNHeader(this.text, {super.key, this.textAlign})
      : style = profileFNHeader;
  const FEText.profileDetailsHeader(this.text, {super.key, this.textAlign})
      : style = profileDetailsHeader;
  const FEText.profileCardTitle(this.text, {super.key, this.textAlign})
      : style = profileCardTitle;
  const FEText.profileCardDetails(this.text, {super.key, this.textAlign})
      : style = profileCardDetails;
  const FEText.profileCardInfo(this.text, {super.key, this.textAlign})
      : style = profileCardInfo;

  //Drawer
  const FEText.drawerListTile(this.text, {super.key, this.textAlign})
      : style = drawerListTile;

  //Wallet

  const FEText.walletHeaderTitle(this.text, {super.key, this.textAlign})
      : style = walletHeaderTitle;
  const FEText.walletCurrencyText(this.text, {super.key, this.textAlign})
      : style = walletCurrencyText;
  const FEText.walletCashInText(this.text, {super.key, this.textAlign})
      : style = walletCashInText;
  const FEText.walletCreditText(this.text, {super.key, this.textAlign})
      : style = walletCreditText;
  const FEText.walletBalIndicator(this.text, {super.key, this.textAlign})
      : style = walletBalIndicator;
  const FEText.walletTicketTitle(this.text, {super.key, this.textAlign})
      : style = walletTicketTitle;
  const FEText.walletTicketCompany(this.text, {super.key, this.textAlign})
      : style = walletTicketCompany;
  const FEText.walletTicketSubtext(this.text, {super.key, this.textAlign})
      : style = walletTicketSubtext;
  const FEText.walletTicketPriceText(this.text, {super.key, this.textAlign})
      : style = walletTicketPriceText;
  const FEText.walletTicketQuantity(this.text, {super.key, this.textAlign})
      : style = walletTicketQuantity;

  //Transactions

  const FEText.transacHeaderTitle(this.text, {super.key, this.textAlign})
      : style = transacHeaderTitle;
  const FEText.transacSubTitle(this.text, {super.key, this.textAlign})
      : style = transacSubTitle;
  const FEText.transacTileText(this.text, {super.key, this.textAlign})
      : style = transacTileText;

  //Buy Ticket
  const FEText.buyCurrencyText(this.text, {super.key, this.textAlign})
      : style = buyCurrencyText;
  const FEText.buyCashInText(this.text, {super.key, this.textAlign})
      : style = buyCashInText;
  const FEText.buyCreditText(this.text, {super.key, this.textAlign})
      : style = buyCreditText;
  const FEText.buyBalIndicator(this.text, {super.key, this.textAlign})
      : style = buyBalIndicator;
  const FEText.buyTicketTitle(this.text, {super.key, this.textAlign})
      : style = buyTicketTitle;
  const FEText.buyTicketCompany(this.text, {super.key, this.textAlign})
      : style = buyTicketCompany;
  const FEText.buyTicketSubtext(this.text, {super.key, this.textAlign})
      : style = buyTicketSubtext;
  const FEText.buyTicketPriceText(this.text, {super.key, this.textAlign})
      : style = buyTicketPriceText;
  const FEText.buyTicketQuantity(this.text, {super.key, this.textAlign})
      : style = buyTicketQuantity;

  // Use Ticket

  const FEText.useTitleHeader(this.text, {super.key, this.textAlign})
      : style = useTitleHeader;
  const FEText.useTitleSubtext(this.text, {super.key, this.textAlign})
      : style = useTitleSubtext;
  const FEText.useTicketCompany(this.text, {super.key, this.textAlign})
      : style = useTicketCompany;
  const FEText.useTicketSubtext(this.text, {super.key, this.textAlign})
      : style = useTicketSubtext;
  const FEText.useTotalPrice(this.text, {super.key, this.textAlign})
      : style = useTotalPrice;
  const FEText.useExplodedPrice(this.text, {super.key, this.textAlign})
      : style = useExplodedPrice;

  // Ticket History

  const FEText.historyTitle(this.text, {super.key, this.textAlign})
      : style = historyTitle;
  const FEText.historyPassTicket(this.text, {super.key, this.textAlign})
      : style = historyPassTicket;
  const FEText.historyTicketLoc(this.text, {super.key, this.textAlign})
      : style = historyTicketLoc;
  const FEText.historyTicketPrice(this.text, {super.key, this.textAlign})
      : style = historyTicketPrice;
  const FEText.historyTicketType(this.text, {super.key, this.textAlign})
      : style = historyTicketType;

  // Notifications

  const FEText.notifHeader(this.text, {super.key, this.textAlign})
      : style = notifHeader;
  const FEText.notifSubtext(this.text, {super.key, this.textAlign})
      : style = notifSubtext;

  // body

  FEText.body(this.text,
      {super.key, this.textAlign, Color color = kcPrimaryColor})
      : style = bodyStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
    );
  }
}
