import 'package:flutter_web/material.dart';
import '../model/models.dart';
import 'menu_item.dart';
import 'menu_separator.dart';
import 'dart:html' as html;

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
        onTap: _openArticlesPage,
        onHover: (isHovered) => _onMenuItemHovered("articles", isHovered),
      ),
      "github": Section(
        label: "Github",
        labelColor: Colors.white,
        hoverColor: Colors.green,
        onTap: () => _openLink("https://github.com/husaynhakeem"),
        onHover: (isHovered) => _onMenuItemHovered("github", isHovered),
      ),
      "twitter": Section(
        label: "Twitter",
        labelColor: Colors.white,
        hoverColor: Colors.green,
        onTap: () => _openLink("https://twitter.com/HusaynaHakeem"),
        onHover: (isHovered) => _onMenuItemHovered("twitter", isHovered),
      ),
      "linkedin": Section(
        label: "LinkedIn",
        labelColor: Colors.white,
        hoverColor: Colors.green,
        onTap: () => _openLink("https://www.linkedin.com/in/husaynhakeem/"),
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

  void _openLink(final String link) {
    html.window.open(link, link);
  }

  void _openArticlesPage() {

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
