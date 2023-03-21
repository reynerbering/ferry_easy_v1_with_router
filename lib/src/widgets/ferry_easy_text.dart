import 'package:ferry_easy/src/shared/app_colors.dart';
import 'package:ferry_easy/src/shared/styles.dart';
import 'package:flutter/material.dart';

export 'package:flutter/material.dart';
export 'ferry_easy_text.dart';

class FerryEasyText extends StatelessWidget {
  final String text;
  final TextStyle style;

  //Onboarding

  const FerryEasyText.onBoardingHead(this.text, {super.key})
      : style = onboardingHead;
  const FerryEasyText.onBoardingSub(this.text, {super.key})
      : style = onboardingSub;

  //Dashboard

  const FerryEasyText.dashTextTitle(this.text, {super.key})
      : style = dashTextTitle;
  const FerryEasyText.dashFerryName(this.text, {super.key})
      : style = dashFerryName;
  const FerryEasyText.dashDestination(this.text, {super.key})
      : style = dashDestination;
  const FerryEasyText.dashEta(this.text, {super.key}) : style = dashEta;
  const FerryEasyText.dashEtaTime(this.text, {super.key}) : style = dashEtaTime;
  const FerryEasyText.dashCdTimer(this.text, {super.key}) : style = dashCdTimer;

  //Side Bar
  const FerryEasyText.sidebarLNHeader(this.text, {super.key})
      : style = sidebarLNHeader;
  const FerryEasyText.sidebarFNHeader(this.text, {super.key})
      : style = sidebarFNHeader;
  const FerryEasyText.sidebarChoice(this.text, {super.key})
      : style = sidebarChoice;

  //Profile

  const FerryEasyText.profileLNHeader(this.text, {super.key})
      : style = profileLNHeader;
  const FerryEasyText.profileFNHeader(this.text, {super.key})
      : style = profileFNHeader;
  const FerryEasyText.profileDetailsHeader(this.text, {super.key})
      : style = profileDetailsHeader;
  const FerryEasyText.profileCardTitle(this.text, {super.key})
      : style = profileCardTitle;
  const FerryEasyText.profileCardDetails(this.text, {super.key})
      : style = profileCardDetails;
  const FerryEasyText.profileCardInfo(this.text, {super.key})
      : style = profileCardInfo;

  //Wallet

  const FerryEasyText.walletHeaderTitle(this.text, {super.key})
      : style = walletHeaderTitle;
  const FerryEasyText.walletCurrencyText(this.text, {super.key})
      : style = walletCurrencyText;
  const FerryEasyText.walletCashInText(this.text, {super.key})
      : style = walletCashInText;
  const FerryEasyText.walletCreditText(this.text, {super.key})
      : style = walletCreditText;
  const FerryEasyText.walletBalIndicator(this.text, {super.key})
      : style = walletBalIndicator;
  const FerryEasyText.walletTicketTitle(this.text, {super.key})
      : style = walletTicketTitle;
  const FerryEasyText.walletTicketCompany(this.text, {super.key})
      : style = walletTicketCompany;
  const FerryEasyText.walletTicketSubtext(this.text, {super.key})
      : style = walletTicketSubtext;
  const FerryEasyText.walletTicketPriceText(this.text, {super.key})
      : style = walletTicketPriceText;
  const FerryEasyText.walletTicketQuantity(this.text, {super.key})
      : style = walletTicketQuantity;

  //Transactions

  const FerryEasyText.transacHeaderTitle(this.text, {super.key})
      : style = transacHeaderTitle;
  const FerryEasyText.transacSubTitle(this.text, {super.key})
      : style = transacSubTitle;
  const FerryEasyText.transacTileText(this.text, {super.key})
      : style = transacTileText;

  //Buy Ticket
  const FerryEasyText.buyCurrencyText(this.text, {super.key})
      : style = buyCurrencyText;
  const FerryEasyText.buyCashInText(this.text, {super.key})
      : style = buyCashInText;
  const FerryEasyText.buyCreditText(this.text, {super.key})
      : style = buyCreditText;
  const FerryEasyText.buyBalIndicator(this.text, {super.key})
      : style = buyBalIndicator;
  const FerryEasyText.buyTicketTitle(this.text, {super.key})
      : style = buyTicketTitle;
  const FerryEasyText.buyTicketCompany(this.text, {super.key})
      : style = buyTicketCompany;
  const FerryEasyText.buyTicketSubtext(this.text, {super.key})
      : style = buyTicketSubtext;
  const FerryEasyText.buyTicketPriceText(this.text, {super.key})
      : style = buyTicketPriceText;
  const FerryEasyText.buyTicketQuantity(this.text, {super.key})
      : style = buyTicketQuantity;

  // Use Ticket

  const FerryEasyText.useTitleHeader(this.text, {super.key})
      : style = useTitleHeader;
  const FerryEasyText.useTitleSubtext(this.text, {super.key})
      : style = useTitleSubtext;
  const FerryEasyText.useTicketCompany(this.text, {super.key})
      : style = useTicketCompany;
  const FerryEasyText.useTicketSubtext(this.text, {super.key})
      : style = useTicketSubtext;
  const FerryEasyText.useTotalPrice(this.text, {super.key})
      : style = useTotalPrice;
  const FerryEasyText.useExplodedPrice(this.text, {super.key})
      : style = useExplodedPrice;

  // Ticket History

  const FerryEasyText.historyTitle(this.text, {super.key})
      : style = historyTitle;
  const FerryEasyText.historyPassTicket(this.text, {super.key})
      : style = historyPassTicket;
  const FerryEasyText.historyTicketLoc(this.text, {super.key})
      : style = historyTicketLoc;
  const FerryEasyText.historyTicketPrice(this.text, {super.key})
      : style = historyTicketPrice;
  const FerryEasyText.historyTicketType(this.text, {super.key})
      : style = historyTicketType;

  // Notifications

  const FerryEasyText.notifHeader(this.text, {super.key}) : style = notifHeader;
  const FerryEasyText.notifSubtext(this.text, {super.key})
      : style = notifSubtext;

  // body

  FerryEasyText.body(this.text, {super.key, Color color = kcPrimaryColor})
      : style = bodyStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
