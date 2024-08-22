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

class GojekDiscover {
  final String image;
  final String title;
  final String desc;

  GojekDiscover({required this.image, required this.title, required this.desc});
}

// ignore: non_constant_identifier_names
List<GojekDiscover> GojekAdvertise = [
  GojekDiscover(
      image: '1',
      title: "makin seru",
      desc: "Aktifkan & Sambungkan GoPay & GoPayLater di Tokopedia"),
  GojekDiscover(
      image: '2',
      title: "makin seru",
      desc: "Sambungin Akun ke Tokopedia, Banyakin Untung"),
  GojekDiscover(
      image: '3',
      title: "makin seru",
      desc: "Promo Belanja Online 10.10: Cashback hingga Rp100.000"),
];
