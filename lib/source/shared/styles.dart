import 'package:ferry_easy/source/shared/app_colors.dart';
import 'package:flutter/material.dart';

// Text styles

//Onboarding

const TextStyle onboardingHead = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.w700,
);
const TextStyle onboardingSub = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
);

//Dashboard

const TextStyle dashTextTitle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
);

const TextStyle dashActiveFerries =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: kcPrimaryColor);
const TextStyle dashFerryName = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);
const TextStyle dashDestination = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  color: kcPrimaryColor,
);
const TextStyle dashEta = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w400,
  color: kcPrimaryColor,
);
const TextStyle dashEtaTime = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w600,
  color: kcPrimaryColor,
);
const TextStyle dashCdTimer = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: kcPrimaryColor,
);

// Side Bar

const TextStyle sidebarLNHeader = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w500,
);
const TextStyle sidebarFNHeader = TextStyle(
  fontSize: 29,
  fontWeight: FontWeight.w700,
);
const TextStyle sidebarChoice = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
);

// User (Own Profile Page)
const TextStyle userLNHeader = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w800,
  color: kcPrimaryColor,
);
const TextStyle userFNHeader = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  color: kcPrimaryColor,
);
const TextStyle userSubText = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w400,
  color: kcPrimaryColor,
);

// Profile

const TextStyle profileLNHeader = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w800,
  color: kcPrimaryColor,
);
const TextStyle profileFNHeader = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w600,
  color: kcPrimaryColor,
);
const TextStyle profileDetailsHeader = TextStyle(
  fontSize: 8,
  fontWeight: FontWeight.w600,
  color: kcPrimaryColor,
);
const TextStyle profileCardTitle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);
const TextStyle profileCardDetails = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);
const TextStyle profileCardInfo = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w400,
  color: kcPrimaryColor,
);

// Drawer

const TextStyle drawerListTile = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w600,
  color: kcPrimaryColor,
);

// Wallet

const TextStyle walletHeaderTitle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);
const TextStyle walletCurrencyText = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  color: kcPrimaryColor,
);
const TextStyle walletCashInText = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w700,
);
const TextStyle walletCreditText = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w600,
  color: kcPrimaryColor,
  letterSpacing: 2,
);
const TextStyle walletBalIndicator = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w600,
  color: kcPrimaryColor,
);
const TextStyle walletTicketTitle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);
const TextStyle walletTicketCompany = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);
const TextStyle walletTicketSubtext = TextStyle(
  fontSize: 6,
  fontWeight: FontWeight.w500,
  color: kcPrimaryColor,
);
const TextStyle walletTicketPriceText = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);
const TextStyle walletTicketQuantity = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);

// Transactions

const TextStyle transacHeaderTitle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w700,
);
const TextStyle transacSubTitle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: kcMediumGrayColor,
);
const TextStyle transacTileText = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: kcMediumGrayColor,
);

//Buy Ticket

const TextStyle buyCurrencyText = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  color: kcPrimaryColor,
);
const TextStyle buyCashInText = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);
const TextStyle buyCreditText = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w600,
  color: kcPrimaryColor,
);
const TextStyle buyBalIndicator = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w600,
  color: kcPrimaryColor,
);
const TextStyle buyTicketTitle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);
const TextStyle buyTicketCompany = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);
const TextStyle buyTicketSubtext = TextStyle(
  fontSize: 6,
  fontWeight: FontWeight.w500,
  color: kcPrimaryColor,
);
const TextStyle buyTicketPriceText = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);
const TextStyle buyTicketQuantity = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w700,
  color: Colors.white,
);

//Use Ticket

const TextStyle useTitleHeader = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);
const TextStyle useTitleSubtext = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  color: kcPrimaryColor,
);
const TextStyle useTicketCompany = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);
const TextStyle useTicketSubtext = TextStyle(
  fontSize: 6,
  fontWeight: FontWeight.w500,
  color: kcPrimaryColor,
);
const TextStyle useTotalPrice = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w800,
  color: kcPrimaryColor,
);
const TextStyle useExplodedPrice = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
);

// Ticket History

const TextStyle historyTitle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
);
const TextStyle historyPassTicket = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w700,
  color: kcMediumGrayColor,
);
const TextStyle historyTicketLoc = TextStyle(
  fontSize: 8,
  fontWeight: FontWeight.w600,
  color: kcMediumGrayColor,
);
const TextStyle historyTicketPrice = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: kcMediumGrayColor,
);
const TextStyle historyTicketType = TextStyle(
  fontSize: 8,
  fontWeight: FontWeight.w800,
  color: kcMediumGrayColor,
);

// Notification

const TextStyle notifHeader = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);
const TextStyle notifSubtext = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: kcPrimaryColor,
);

// body in general

const TextStyle bodyStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
);
