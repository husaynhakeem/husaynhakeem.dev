import 'package:flutter_web/material.dart';
import '../model/models.dart';
import 'menu_item.dart';
import 'menu_separator.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final _menuItems = Map();
  var _hoveredItemKey = "";

  @override
  void initState() {
    super.initState();
    _initMenuItems();
  }

  void _initMenuItems() {
    _menuItems.addAll({
      "articles": Section(
        label: "Articles",
        labelColor: Colors.white,
        hoverColor: Colors.green,
        onTap: () => print("Artciles"),
        onHover: (isHovered) => _onMenuItemHovered("articles", isHovered),
      ),
      "github": Section(
        label: "Github",
        labelColor: Colors.white,
        hoverColor: Colors.green,
        onTap: () => print("Artciles"),
        onHover: (isHovered) => _onMenuItemHovered("github", isHovered),
      ),
      "twitter": Section(
        label: "Twitter",
        labelColor: Colors.white,
        hoverColor: Colors.green,
        onTap: () => print("Artciles"),
        onHover: (isHovered) => _onMenuItemHovered("twitter", isHovered),
      ),
      "linkedin": Section(
        label: "LinkedIn",
        labelColor: Colors.white,
        hoverColor: Colors.green,
        onTap: () => print("Artciles"),
        onHover: (isHovered) => _onMenuItemHovered("linkedin", isHovered),
      ),
    });
  }

  void _onMenuItemHovered(String key, bool isHovered) {
    setState(() {
      _menuItems[_hoveredItemKey]?.isHovered = false;
      _menuItems[key]?.isHovered = isHovered;
      _hoveredItemKey = key;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        MenuItem(section: _menuItems["articles"]),
        MenuSeparator(),
        MenuItem(section: _menuItems["github"]),
        MenuSeparator(),
        MenuItem(section: _menuItems["twitter"]),
        MenuSeparator(),
        MenuItem(section: _menuItems["linkedin"]),
      ],
    );
  }
}
