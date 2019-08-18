import 'package:flutter_web/material.dart';

class Section {
  final String label;
  final Color labelColor;
  final Color hoverColor;
  final Function onTap;
  final Function(bool) onHover;
  bool isHovered = false;

  Section({
    @required this.label,
    @required this.labelColor,
    @required this.hoverColor,
    @required this.onTap,
    @required this.onHover,
  });
}
