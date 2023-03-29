import 'package:ferry_easy/src/shared/app_colors.dart';
import 'package:ferry_easy/src/shared/styles.dart';
import 'package:flutter/material.dart';

export 'package:flutter/material.dart';
export 'ferry_easy_text.dart';

class FEText extends StatelessWidget {
  final String text;
  final TextStyle style;

  //Onboarding

  const FEText.onBoardingHead(this.text, {super.key}) : style = onboardingHead;
  const FEText.onBoardingSub(this.text, {super.key}) : style = onboardingSub;

  //Dashboard

  const FEText.dashTextTitle(this.text, {super.key}) : style = dashTextTitle;
  const FEText.dashFerryName(this.text, {super.key}) : style = dashFerryName;
  const FEText.dashDestination(this.text, {super.key})
      : style = dashDestination;
  const FEText.dashEta(this.text, {super.key}) : style = dashEta;
  const FEText.dashEtaTime(this.text, {super.key}) : style = dashEtaTime;
  const FEText.dashCdTimer(this.text, {super.key}) : style = dashCdTimer;

  //Side Bar
  const FEText.sidebarLNHeader(this.text, {super.key})
      : style = sidebarLNHeader;
  const FEText.sidebarFNHeader(this.text, {super.key})
      : style = sidebarFNHeader;
  const FEText.sidebarChoice(this.text, {super.key}) : style = sidebarChoice;

  //Profile

  const FEText.profileLNHeader(this.text, {super.key})
      : style = profileLNHeader;
  const FEText.profileFNHeader(this.text, {super.key})
      : style = profileFNHeader;
  const FEText.profileDetailsHeader(this.text, {super.key})
      : style = profileDetailsHeader;
  const FEText.profileCardTitle(this.text, {super.key})
      : style = profileCardTitle;
  const FEText.profileCardDetails(this.text, {super.key})
      : style = profileCardDetails;
  const FEText.profileCardInfo(this.text, {super.key})
      : style = profileCardInfo;

  //Wallet

  const FEText.walletHeaderTitle(this.text, {super.key})
      : style = walletHeaderTitle;
  const FEText.walletCurrencyText(this.text, {super.key})
      : style = walletCurrencyText;
  const FEText.walletCashInText(this.text, {super.key})
      : style = walletCashInText;
  const FEText.walletCreditText(this.text, {super.key})
      : style = walletCreditText;
  const FEText.walletBalIndicator(this.text, {super.key})
      : style = walletBalIndicator;
  const FEText.walletTicketTitle(this.text, {super.key})
      : style = walletTicketTitle;
  const FEText.walletTicketCompany(this.text, {super.key})
      : style = walletTicketCompany;
  const FEText.walletTicketSubtext(this.text, {super.key})
      : style = walletTicketSubtext;
  const FEText.walletTicketPriceText(this.text, {super.key})
      : style = walletTicketPriceText;
  const FEText.walletTicketQuantity(this.text, {super.key})
      : style = walletTicketQuantity;

  //Transactions

  const FEText.transacHeaderTitle(this.text, {super.key})
      : style = transacHeaderTitle;
  const FEText.transacSubTitle(this.text, {super.key})
      : style = transacSubTitle;
  const FEText.transacTileText(this.text, {super.key})
      : style = transacTileText;

  //Buy Ticket
  const FEText.buyCurrencyText(this.text, {super.key})
      : style = buyCurrencyText;
  const FEText.buyCashInText(this.text, {super.key}) : style = buyCashInText;
  const FEText.buyCreditText(this.text, {super.key}) : style = buyCreditText;
  const FEText.buyBalIndicator(this.text, {super.key})
      : style = buyBalIndicator;
  const FEText.buyTicketTitle(this.text, {super.key}) : style = buyTicketTitle;
  const FEText.buyTicketCompany(this.text, {super.key})
      : style = buyTicketCompany;
  const FEText.buyTicketSubtext(this.text, {super.key})
      : style = buyTicketSubtext;
  const FEText.buyTicketPriceText(this.text, {super.key})
      : style = buyTicketPriceText;
  const FEText.buyTicketQuantity(this.text, {super.key})
      : style = buyTicketQuantity;

  // Use Ticket

  const FEText.useTitleHeader(this.text, {super.key}) : style = useTitleHeader;
  const FEText.useTitleSubtext(this.text, {super.key})
      : style = useTitleSubtext;
  const FEText.useTicketCompany(this.text, {super.key})
      : style = useTicketCompany;
  const FEText.useTicketSubtext(this.text, {super.key})
      : style = useTicketSubtext;
  const FEText.useTotalPrice(this.text, {super.key}) : style = useTotalPrice;
  const FEText.useExplodedPrice(this.text, {super.key})
      : style = useExplodedPrice;

  // Ticket History

  const FEText.historyTitle(this.text, {super.key}) : style = historyTitle;
  const FEText.historyPassTicket(this.text, {super.key})
      : style = historyPassTicket;
  const FEText.historyTicketLoc(this.text, {super.key})
      : style = historyTicketLoc;
  const FEText.historyTicketPrice(this.text, {super.key})
      : style = historyTicketPrice;
  const FEText.historyTicketType(this.text, {super.key})
      : style = historyTicketType;

  // Notifications

  const FEText.notifHeader(this.text, {super.key}) : style = notifHeader;
  const FEText.notifSubtext(this.text, {super.key}) : style = notifSubtext;

  // body

  FEText.body(this.text, {super.key, Color color = kcPrimaryColor})
      : style = bodyStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
