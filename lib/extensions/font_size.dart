import '../configs/configs.dart';

extension FontSizeExtension<T extends num> on T {
  get fs => Responsive.isDesktop
      ? this
      : Responsive.isTablet
          ? this < 15
              ? this
              : this * .9
          : this < 15
              ? this
              : this * .85;
}
