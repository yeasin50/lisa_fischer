import '../constants/constants.dart';

extension PageExtension on PageName {
  String get value => this.toString().split('.').last;
  String get location => "/${this.toString().split('.').last}";
}
