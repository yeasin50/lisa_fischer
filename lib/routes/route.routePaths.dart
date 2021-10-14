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

  AppRoutePath.unkwon()
      : pageName = null,
        isUnkwon = true;

  //* work-pages
  AppRoutePath.bercelonaMetroRedesign()
      : pageName = PageName.bercelonaMetroRedesign,
        isUnkwon = false;

  AppRoutePath.buyOnGoogle()
      : pageName = PageName.buyOnGoogle,
        isUnkwon = false;

  AppRoutePath.googleShopping()
      : pageName = PageName.googleShopping,
        isUnkwon = false;

  AppRoutePath.leveled()
      : pageName = PageName.leveled,
        isUnkwon = false;

  AppRoutePath.loppetWinterFestival()
      : pageName = PageName.loppetWinterFestival,
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
}
