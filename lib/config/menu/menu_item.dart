import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: "Counter",
      subTitle: "Un contador con Riverpod",
      link: "/counter",
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: "Theme changer",
      subTitle: "Cambiar el tema de la app",
      link: "/theme-changer",
      icon: Icons.theater_comedy_outlined),
  MenuItem(
      title: "Botones",
      subTitle: "Varios botones",
      link: "/buttons",
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: "Tarjetas",
      subTitle: "Un contenedor estilizado",
      link: "/cards",
      icon: Icons.credit_card),
  MenuItem(
      title: "Progress Indicator",
      subTitle: "Generales y controlados",
      link: "/progress",
      icon: Icons.refresh_rounded),
  MenuItem(
      title: "Snackbars y dialogos",
      subTitle: "Generales y controlados",
      link: "/snackbars",
      icon: Icons.info_outline),
  MenuItem(
      title: "Animated Container",
      subTitle: "Statefull widget animado",
      link: "/animated",
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: "Ui controls + Tiles",
      subTitle: "Una serie de controles en flutter",
      link: "/ui-controls",
      icon: Icons.control_camera_outlined),
  MenuItem(
      title: "Tutorial",
      subTitle: "El tutorial de la app",
      link: "/tutorial",
      icon: Icons.tungsten_outlined),
  MenuItem(
      title: "Infinite Scroll",
      subTitle: "Listas infinitas y pull to refresh",
      link: "/infinite",
      icon: Icons.list_alt_rounded),
];
