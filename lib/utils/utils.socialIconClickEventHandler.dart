import 'package:url_launcher/url_launcher.dart';

//* Find me On
class SocialIconClickEventHandler {
  static _canLaunch(String urlString) async {
    await canLaunch(urlString)
        ? launch(urlString)
        : print("invalid url $urlString");
  }

  static void email() => _canLaunch("mailto:lisasuefischer@gmail.com");

  static void medium() => _canLaunch("https://medium.com/@lisasuefischer");

  static void twitter() => _canLaunch("https://twitter.com/lisasuefischer");

  static void behench() => _canLaunch("https://www.behance.net/lisasuefischer");

  static void linkedIn() =>
      _canLaunch("https://www.linkedin.com/in/lisasuefischer");

  static void insta() => _canLaunch("http://instagram.com/lisasuefischer");
}
