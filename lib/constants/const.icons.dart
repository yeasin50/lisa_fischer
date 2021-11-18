///* site have two icons for one :) [icon + mask]

String _iconPath({required String iconName}) => "assets/Icons/$iconName.svg";

class AppIcon {
  static final String behance = _iconPath(iconName: "behance");
  static final String email = _iconPath(iconName: "email");
  static final String insta = _iconPath(iconName: "insta");
  static final String linkedIn = _iconPath(iconName: "linkedIn");
  static final String medium = _iconPath(iconName: "medium");
  static final String twitter = _iconPath(iconName: "twitter");
}
