import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/models/gojek_icons.dart';
import 'package:gojek/theme.dart';

class MenuComponent extends StatelessWidget {
  const MenuComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 15, right: 15),
      child: Column(
        children: [
          SizedBox(
            width: 340,
            height: 157,
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                ...menuIcons.map((menu) => Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: menu.title != 'GoClub'
                                  ? menu.color
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(100)),
                          child:
                              SvgPicture.asset('assets/icons/${menu.icon}.svg',
                                  color: menu.title == 'GoClub'
                                      ? purple
                                      : menu.icon == 'other'
                                          ? dark2
                                          : Colors.white),
                        ),
                        Text(menu.title)
                      ],
                    ))
              ],
            ),
          ),

          // EXP Section
          Container(
            height: 65,
            width: 345,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: dark4, width: 2),
                gradient: const LinearGradient(
                    colors: [Color(0xffEAF3F6), Colors.white],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight)),
            child: Stack(
              children: [
                Positioned(
                  top: 4,
                  left: 8,
                  child: SvgPicture.asset(
                    'assets/icons/dots.svg',
                    height: 57,
                    width: 120,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/star.svg',
                      width: 40,
                      height: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "117 XP lagi ada Harta Karun",
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 4,
                              width: 209,
                              decoration: BoxDecoration(
                                  color: dark4,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            Container(
                              height: 4,
                              width: 138,
                              decoration: BoxDecoration(
                                  color: primary,
                                  borderRadius: BorderRadius.circular(50)),
                            )
                          ],
                        )
                      ],
                    ),
                    SvgPicture.asset('assets/icons/angle-right.svg',
                        width: 24, height: 24)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
