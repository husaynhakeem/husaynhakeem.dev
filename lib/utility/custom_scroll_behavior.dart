import 'package:flutter_web/widgets.dart';

/// A scroll behavior without the overglow effect.
class CustomScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
