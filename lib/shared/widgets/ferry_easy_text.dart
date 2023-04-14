import 'package:ferry_easy/shared/styles/app_colors.dart';
import 'package:ferry_easy/shared/styles/styles.dart';
import 'package:flutter/material.dart';

export 'package:flutter/material.dart';
export 'ferry_easy_text.dart';

class FEText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final TextStyle style;
  final TextOverflow? overflow;
  final bool? softWrap;
  final int? maxLines;

  //Onboarding

  const FEText.onBoardingHead(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = onboardingHead;
  const FEText.onBoardingSub(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = onboardingSub;

  //Dashboard

  const FEText.dashTextTitle(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = dashTextTitle;
  const FEText.dashActiveFerries(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = dashActiveFerries;
  const FEText.dashFerryName(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = dashFerryName;
  const FEText.dashDestination(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = dashDestination;
  const FEText.dashEta(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = dashEta;
  const FEText.dashEtaTime(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = dashEtaTime;
  const FEText.dashCdTimer(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = dashCdTimer;

  //Side Bar
  const FEText.sidebarLNHeader(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = sidebarLNHeader;
  const FEText.sidebarFNHeader(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = sidebarFNHeader;
  const FEText.sidebarChoice(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = sidebarChoice;

  //User ( Own Profile Page )

  const FEText.userLNHeader(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = userLNHeader;
  const FEText.userFNHeader(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = userFNHeader;
  const FEText.userSubText(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = userSubText;

  //Profile

  const FEText.profileLNHeader(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = profileLNHeader;
  const FEText.profileFNHeader(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = profileFNHeader;
  const FEText.profileDetailsHeader(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = profileDetailsHeader;
  const FEText.profileCardTitle(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = profileCardTitle;
  const FEText.profileCardDetails(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = profileCardDetails;
  const FEText.profileCardInfo(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = profileCardInfo;

  //Drawer
  const FEText.drawerListTile(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = drawerListTile;

  //Wallet

  const FEText.walletHeaderTitle(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = walletHeaderTitle;
  const FEText.walletCurrencyText(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = walletCurrencyText;
  const FEText.walletCashInText(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = walletCashInText;
  const FEText.walletCreditText(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = walletCreditText;
  const FEText.walletBalIndicator(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = walletBalIndicator;
  const FEText.walletTicketTitle(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = walletTicketTitle;
  const FEText.walletTicketCompany(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = walletTicketCompany;
  const FEText.walletTicketSubtext(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = walletTicketSubtext;
  const FEText.walletTicketPriceText(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = walletTicketPriceText;
  const FEText.walletTicketQuantity(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = walletTicketQuantity;

  //Transactions

  const FEText.transacHeaderTitle(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = transacHeaderTitle;
  const FEText.transacSubTitle(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = transacSubTitle;
  const FEText.transacTileText(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = transacTileText;

  //Buy Ticket
  const FEText.buyCurrencyText(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = buyCurrencyText;
  const FEText.buyCashInText(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = buyCashInText;
  const FEText.buyCreditText(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = buyCreditText;
  const FEText.buyBalIndicator(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = buyBalIndicator;
  const FEText.buyTicketTitle(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = buyTicketTitle;
  const FEText.buyTicketCompany(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = buyTicketCompany;
  const FEText.buyTicketSubtext(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = buyTicketSubtext;
  const FEText.buyTicketPriceText(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = buyTicketPriceText;
  const FEText.buyTicketQuantity(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = buyTicketQuantity;

  // Use Ticket

  const FEText.useTitleHeader(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = useTitleHeader;
  const FEText.useTitleSubtext(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = useTitleSubtext;
  const FEText.useTicketCompany(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = useTicketCompany;
  const FEText.useTicketSubtext(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = useTicketSubtext;
  const FEText.useTotalPrice(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = useTotalPrice;
  const FEText.useExplodedPrice(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = useExplodedPrice;

  // Ticket History

  const FEText.historyTitle(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = historyTitle;
  const FEText.historyPassTicket(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = historyPassTicket;
  const FEText.historyTicketLoc(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = historyTicketLoc;
  const FEText.historyTicketPrice(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = historyTicketPrice;
  const FEText.historyTicketType(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = historyTicketType;

  // Notifications

  const FEText.notifHeader(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = notifHeader;
  const FEText.notifSubtext(this.text,
      {super.key, this.textAlign, this.softWrap, this.maxLines, this.overflow})
      : style = notifSubtext;

  // body

  FEText.body(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      Color color = kcPrimaryColor})
      : style = bodyStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
      overflow: overflow,
      softWrap: softWrap,
      maxLines: maxLines,
    );
  }
}
