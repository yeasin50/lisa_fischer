import '../constants/constants.dart';

//* how to simplufy this 🤨
class AppRoutePath {
  final PageName? pageName;
  final bool isUnkwon;

  ///* while work will be home page, just put null for simplicity
  AppRoutePath.work()
      : isUnkwon = false,
        pageName = null;

  AppRoutePath.about()
      : pageName = PageName.about,
        isUnkwon = false;

  AppRoutePath.contact()
      : pageName = PageName.contact,
        isUnkwon = false;

  AppRoutePath.unknown()
      : pageName = null,
        isUnkwon = true;

  //* work-pages
  AppRoutePath.bercelonaMetroRedesign()
      : pageName = PageName.bercelona_metro_redesign,
        isUnkwon = false;

  AppRoutePath.buyOnGoogle()
      : pageName = PageName.buy_on_google,
        isUnkwon = false;

  AppRoutePath.googleShopping()
      : pageName = PageName.google_shopping,
        isUnkwon = false;

  AppRoutePath.leveled()
      : pageName = PageName.leveled,
        isUnkwon = false;

  AppRoutePath.loppetWinterFestival()
      : pageName = PageName.loppet_winter_festival,
        isUnkwon = false;

  AppRoutePath.lucere()
      : pageName = PageName.lucere,
        isUnkwon = false;

  AppRoutePath.oro()
      : pageName = PageName.oro,
        isUnkwon = false;

  AppRoutePath.thrive()
      : pageName = PageName.thrive,
        isUnkwon = false;

  AppRoutePath.visda()
      : pageName = PageName.visda,
        isUnkwon = false;

  bool get isWork => pageName == null && !isUnkwon;
  bool get isAbout => pageName == PageName.about && !isUnkwon;
  bool get isContact => pageName == PageName.contact && !isUnkwon;

  //* work pages
  bool get isBercelonaMetroRedesign =>
      pageName == PageName.bercelona_metro_redesign && !isUnkwon;

  bool get isBuyOnGoogle => pageName == PageName.buy_on_google && !isUnkwon;
  bool get isGoogleShopping => pageName == PageName.google_shopping && !isUnkwon;
  bool get isLeveled => pageName == PageName.leveled && !isUnkwon;
  bool get isLoppetWinterFestival =>
      pageName == PageName.loppet_winter_festival && !isUnkwon;

  bool get isLucere => pageName == PageName.lucere && !isUnkwon;
  bool get isOro => pageName == PageName.oro && !isUnkwon;
  bool get isThrive => pageName == PageName.thrive && !isUnkwon;
  bool get isVisda => pageName == PageName.visda && !isUnkwon;
}
