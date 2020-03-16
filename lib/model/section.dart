import 'package:flutter/material.dart';

class Section {
  final String action;
  final String label;
  final Color hoverColor;
  final Function onTap;
  final Function(int, bool) onHover;
  bool isHovered = false;

  Section({
    @required this.action,
    @required this.label,
    @required this.hoverColor,
    @required this.onTap,
    @required this.onHover,
  });
}
