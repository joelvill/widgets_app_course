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
];
