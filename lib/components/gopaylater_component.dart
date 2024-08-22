import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/models/gojek_icons.dart';
import 'package:gojek/theme.dart';

class GopayLaterComponent extends StatelessWidget {
  const GopayLaterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 23, left: 15, right: 15, bottom: 23),
      child: Column(
        children: [
          SizedBox(
            height: 93,
            width: 324,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/gopaylater.png',
                  height: 14,
                  width: 98,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Text(
                      'Lebih hemat pake GoPayLater',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Image.asset(
                      'assets/images/impressive.png',
                      height: 16,
                      width: 16,
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~",
                  style: TextStyle(fontSize: 14.0),
                )
              ],
            ),
          ),
          ...GojekAdvertise.map((advertise) => Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      child: Image.asset(
                        'assets/images/${advertise.image}.png',
                        height: 170,
                        width: 353,
                        fit: BoxFit.cover,
                      )),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8)),
                        border: Border.all(color: dark4, width: 1.3)),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            advertise.title.capitalize(),
                            style: const TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            advertise.desc,
                            style: const TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )))
        ],
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
