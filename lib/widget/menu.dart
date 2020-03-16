import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../utility/utilities.dart' as utils;
import '../model/models.dart';
import 'menu_item.dart';
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
        action: "read",
        label: "Blog",
        hoverColor: Colors.blue,
        onTap: _openArticlesPage,
        onHover: (index, isHovered) => _onMenuItemHovered(0, isHovered),
      ),
      Section(
        action: "fork",
        label: "Github",
        hoverColor: Colors.blue,
        onTap: () => _openLink("https://github.com/husaynhakeem"),
        onHover: (index, isHovered) => _onMenuItemHovered(1, isHovered),
      ),
      Section(
        action: "mention",
        label: "Twitter",
        hoverColor: Colors.blue,
        onTap: () => _openLink("https://twitter.com/HusaynaHakeem"),
        onHover: (index, isHovered) => _onMenuItemHovered(2, isHovered),
      ),
      Section(
        action: "network",
        label: "LinkedIn",
        hoverColor: Colors.blue,
        onTap: () => _openLink("https://www.linkedin.com/in/husaynhakeem/"),
        onHover: (index, isHovered) => _onMenuItemHovered(3, isHovered),
      ),
    ]);
  }

  void _onMenuItemHovered(final int index, final bool isHovered) {
    setState(() {
      // Deselect currently hovered item
      if (_isValidMenuItemIndex(_hoveredItemIndex)) {
        _menuItems[_hoveredItemIndex].isHovered = false;
      }

      // Select menu item at position [index]
      if (_isValidMenuItemIndex(index)) {
        _menuItems[index].isHovered = isHovered;
      }

      // Update hovered index
      _hoveredItemIndex = index;
    });
  }

  bool _isValidMenuItemIndex(final int index) {
    return index >= 0 && index < _menuItems.length;
  }

  void _unselectCurrentlyHoveredMenuItem() {
    _onMenuItemHovered(-1, true);
  }

  void _openLink(final String link) {
    html.window.open(link, link);
    _unselectCurrentlyHoveredMenuItem();
  }

  void _openArticlesPage() {
    NavigationService.openArticlesPage();
    _unselectCurrentlyHoveredMenuItem();
  }

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = utils.isSmallScreen(context);
    return Padding(
      padding: const EdgeInsets.only(right: 32, bottom: 32, left: 32),
      child: ListView.separated(
        scrollDirection: _scrollDirection(isSmallScreen),
        itemCount: _menuItems.length,
        itemBuilder: (context, index) => MenuItem(
          index: index,
          section: _menuItems[index],
        ),
        separatorBuilder: (context, index) => _separator(isSmallScreen),
      ),
    );
  }

  Axis _scrollDirection(final bool isSmallScreen) {
    return isSmallScreen ? Axis.vertical : Axis.horizontal;
  }

  Widget _separator(final bool isSmallScreen) {
    final double width = isSmallScreen ? 0 : 20;
    final double height = isSmallScreen ? 20 : 0;
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
