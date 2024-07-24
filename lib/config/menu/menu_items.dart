import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Counter',
    subTitle: 'Riverpod Counter',
    link: '/counter',
    icon: Icons.countertops,
  ),
  MenuItems(
    title: 'Botones',
    subTitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subTitle: 'Un contendor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'Snackbars and Dialogs',
    subTitle: 'Indicators in screen',
    link: '/snackbars',
    icon: Icons.notifications,
  ),
  MenuItems(
    title: 'Animated Containers',
    subTitle: 'Animaciones en flutter',
    link: '/animated',
    icon: Icons.animation_outlined,
  ),
  MenuItems(
    title: 'UI Controls',
    subTitle: 'Controles de interfaz',
    link: '/ui-controls',
    icon: Icons.card_giftcard,
  ),
  MenuItems(
    title: 'Tutorials',
    subTitle: 'Tutoriales de flutter',
    link: '/tutorials',
    icon: Icons.videogame_asset_rounded,
  ),
  MenuItems(
    title: 'Infinite Scroll and Pull',
    subTitle: 'Scroll infinito y pull to refresh',
    link: '/inifite',
    icon: Icons.scale_outlined,
  ),
  MenuItems(
    title: 'Theme Changer',
    subTitle: 'Cambiar el tema de flutter',
    link: '/theme-changer',
    icon: Icons.palette_outlined,
  ),
];
