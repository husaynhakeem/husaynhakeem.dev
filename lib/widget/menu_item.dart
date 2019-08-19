import 'package:flutter_web/material.dart';
import '../model/models.dart';

class MenuItem extends StatelessWidget {
  final int index;
  final Section section;

  MenuItem({
    Key key,
    @required this.index,
    @required this.section,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        section.label,
        style: TextStyle(
            color: section.isHovered ? section.hoverColor : section.labelColor),
      ),
      onTap: section.onTap,
      onHover: (bool hover) => section.onHover(index, hover),
    );
  }
}
