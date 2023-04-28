import '../shared_exports.dart';

export 'package:flutter/material.dart';
export 'ferry_easy_text.dart';

class FEText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final TextStyle style;
  final TextOverflow? overflow;
  final bool? softWrap;
  final int? maxLines;
  final Color? color;
  //Onboarding

  FEText.onBoardingHead(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = onboardingHead.copyWith(color: color);
  FEText.onBoardingSub(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = onboardingSub.copyWith(color: color);

  //Dashboard

  FEText.dashTextTitle(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = dashTextTitle.copyWith(color: color);
  FEText.dashActiveFerries(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = dashActiveFerries.copyWith(color: color);
  FEText.dashFerryName(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = dashFerryName.copyWith(color: color);
  FEText.dashDestination(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = dashDestination.copyWith(color: color);
  FEText.dashEta(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = dashEta.copyWith(color: color);
  FEText.dashEtaTime(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = dashEtaTime.copyWith(color: color);
  FEText.dashCdTimer(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = dashCdTimer.copyWith(color: color);

  //Side Bar
  FEText.sidebarLNHeader(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = sidebarLNHeader.copyWith(color: color);
  FEText.sidebarFNHeader(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = sidebarFNHeader.copyWith(color: color);
  FEText.sidebarChoice(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = sidebarChoice.copyWith(color: color);

  //User ( Own Profile Page )

  FEText.userLNHeader(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = userLNHeader.copyWith(color: color);
  FEText.userFNHeader(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = userFNHeader.copyWith(color: color);
  FEText.userSubText(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = userSubText.copyWith(color: color);

  //Profile

  FEText.profileLNHeader(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = profileLNHeader.copyWith(color: color);
  FEText.profileFNHeader(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = profileFNHeader.copyWith(color: color);
  FEText.profileDetailsHeader(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = profileDetailsHeader.copyWith(color: color);
  FEText.profileCardTitle(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = profileCardTitle.copyWith(color: color);
  FEText.profileCardDetails(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = profileCardDetails.copyWith(color: color);
  FEText.profileCardInfo(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = profileCardInfo.copyWith(color: color);

  //Drawer
  FEText.drawerListTile(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = drawerListTile.copyWith(color: color);

  //Wallet

  FEText.walletHeaderTitle(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = walletHeaderTitle.copyWith(color: color);
  FEText.walletCurrencyText(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = walletCurrencyText.copyWith(color: color);
  FEText.walletCashInText(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = walletCashInText.copyWith(color: color);
  FEText.walletCreditText(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = walletCreditText.copyWith(color: color);
  FEText.walletBalIndicator(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = walletBalIndicator.copyWith(color: color);
  FEText.walletTicketTitle(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = walletTicketTitle.copyWith(color: color);
  FEText.walletTicketCompany(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = walletTicketCompany.copyWith(color: color);
  FEText.walletTicketSubtext(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = walletTicketSubtext.copyWith(color: color);
  FEText.walletTicketPriceText(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = walletTicketPriceText.copyWith(color: color);
  FEText.walletTicketQuantity(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = walletTicketQuantity.copyWith(color: color);

  //Transactions

  FEText.transacHeaderTitle(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = transacHeaderTitle.copyWith(color: color);
  FEText.transacSubTitle(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = transacSubTitle.copyWith(color: color);
  FEText.transacTileText(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = transacTileText.copyWith(color: color);

  //Buy Ticket
  FEText.buyCurrencyText(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = buyCurrencyText.copyWith(color: color);
  FEText.buyCashInText(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = buyCashInText.copyWith(color: color);
  FEText.buyCreditText(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = buyCreditText.copyWith(color: color);
  FEText.buyBalIndicator(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = buyBalIndicator.copyWith(color: color);
  FEText.buyTicketTitle(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = buyTicketTitle.copyWith(color: color);
  FEText.buyTicketCompany(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = buyTicketCompany.copyWith(color: color);
  FEText.buyTicketSubtext(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = buyTicketSubtext.copyWith(color: color);
  FEText.buyTicketPriceText(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = buyTicketPriceText.copyWith(color: color);
  FEText.buyTicketQuantity(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = buyTicketQuantity.copyWith(color: color);

  // Use Ticket

  FEText.useTitleHeader(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = useTitleHeader.copyWith(color: color);
  FEText.useTitleSubtext(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = useTitleSubtext.copyWith(color: color);
  FEText.useTicketCompany(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = useTicketCompany.copyWith(color: color);
  FEText.useTicketSubtext(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = useTicketSubtext.copyWith(color: color);
  FEText.useTotalPrice(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = useTotalPrice.copyWith(color: color);
  FEText.useExplodedPrice(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = useExplodedPrice.copyWith(color: color);

  // Ticket History

  FEText.historyTitle(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = historyTitle.copyWith(color: color);
  FEText.historyPassTicket(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = historyPassTicket.copyWith(color: color);
  FEText.historyTicketLoc(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = historyTicketLoc.copyWith(color: color);
  FEText.historyTicketPrice(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = historyTicketPrice.copyWith(color: color);
  FEText.historyTicketType(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = historyTicketType.copyWith(color: color);

  // Notifications

  FEText.notifHeader(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = notifHeader.copyWith(color: color);
  FEText.notifSubtext(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color})
      : style = notifSubtext.copyWith(color: color);

  // body

  FEText.body(this.text,
      {super.key,
      this.textAlign,
      this.softWrap,
      this.maxLines,
      this.overflow,
      this.color = kcPrimaryColor})
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
