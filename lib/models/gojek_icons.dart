import 'package:flutter/material.dart';
import 'package:gojek/theme.dart';

class GojekIcon {
  final String icon;
  final String title;
  final Color? color;

  GojekIcon({required this.icon, required this.title, this.color});
}

List<GojekIcon> gopayIcons = [
  GojekIcon(icon: 'pay', title: 'Bayar'),
  GojekIcon(icon: 'topup', title: 'Top Up'),
  GojekIcon(icon: 'explore', title: 'Eksplor'),
];

List<GojekIcon> menuIcons = [
  GojekIcon(icon: 'goride', title: 'GoRide', color: primary2),
  GojekIcon(icon: 'gocar', title: 'GoCar', color: primary2),
  GojekIcon(icon: 'gofood', title: 'GoFood', color: danger),
  GojekIcon(icon: 'gosend', title: 'GoSend', color: primary2),
  GojekIcon(icon: 'gomart', title: 'GoMart', color: primary2),
  GojekIcon(icon: 'gopulsa', title: 'GoPulsa', color: danger),
  GojekIcon(icon: 'goclub', title: 'GoClub', color: purple),
  GojekIcon(icon: 'other', title: 'Lainya', color: dark4),
];
