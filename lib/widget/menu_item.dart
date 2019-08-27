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
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _action(),
              _label(),
            ],
          ),
          onTap: section.onTap,
          onHover: (bool hover) => section.onHover(index, hover),
        ),
      ],
    );
  }

  Widget _action() {
    return Text(
      "${section.action} ",
      style: TextStyle(
        color: section.isHovered ? section.hoverColor : Colors.white30,
      ),
    );
  }

  Widget _label() {
    return Text(
      section.label,
      style: TextStyle(
        color: section.isHovered ? section.hoverColor : Colors.white,
      ),
    );
  }
}
