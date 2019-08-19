import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';
import '../model/models.dart';
import 'menu_item.dart';
import 'menu_separator.dart';
import 'dart:html' as html;
import '../navigation_service.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final _menuItems = <Section>[];
  var _hoveredItemIndex = -1;

  @override
  void initState() {
    super.initState();
    _initMenuItems();
  }

  void _initMenuItems() {
    _menuItems.addAll([
      Section(
        label: "Articles",
        labelColor: Colors.white,
        hoverColor: Colors.green,
        onTap: _openArticlesPage,
        onHover: (index, isHovered) => _onMenuItemHovered(0, isHovered),
      ),
      Section(
        label: "Github",
        labelColor: Colors.white,
        hoverColor: Colors.green,
        onTap: () => _openLink("https://github.com/husaynhakeem"),
        onHover: (index, isHovered) => _onMenuItemHovered(1, isHovered),
      ),
      Section(
        label: "Twitter",
        labelColor: Colors.white,
        hoverColor: Colors.green,
        onTap: () => _openLink("https://twitter.com/HusaynaHakeem"),
        onHover: (index, isHovered) => _onMenuItemHovered(2, isHovered),
      ),
      Section(
        label: "LinkedIn",
        labelColor: Colors.white,
        hoverColor: Colors.green,
        onTap: () => _openLink("https://www.linkedin.com/in/husaynhakeem/"),
        onHover: (index, isHovered) => _onMenuItemHovered(3, isHovered),
      ),
    ]);
  }

  void _onMenuItemHovered(int index, bool isHovered) {
    setState(() {
      if (_hoveredItemIndex > 0) {
        _menuItems[_hoveredItemIndex].isHovered = false;
      }
      _menuItems[index].isHovered = isHovered;
      _hoveredItemIndex = index;
    });
  }

  void _openLink(final String link) {
    html.window.open(link, link);
  }

  void _openArticlesPage() {
    NavigationService.navigationKey.currentState
        .pushNamed(NavigationService.route_articles);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: _menuItems.length,
      itemBuilder: (context, index) => MenuItem(
        index: index,
        section: _menuItems[index],
      ),
      separatorBuilder: (context, index) => MenuSeparator(),
    );
  }
}
