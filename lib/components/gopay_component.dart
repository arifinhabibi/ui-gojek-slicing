import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/models/gojek_icons.dart';
import 'package:gojek/theme.dart';

class GopayComponent extends StatelessWidget {
  const GopayComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Container(
        height: 96,
        decoration: BoxDecoration(
            color: secondary2, borderRadius: BorderRadius.circular(15)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 2,
                    height: 8,
                    decoration: BoxDecoration(
                        color: const Color(0xffbbbbbb),
                        borderRadius: BorderRadius.circular(1)),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: 2,
                    height: 8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(1)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 10,
                    width: 127,
                    decoration: const BoxDecoration(
                        color: Color(0xff9CCDDB),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8))),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 68,
                    width: 127,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/gopay.png',
                              width: 57, height: 14),
                          Text(
                            "Rp12.379",
                            style: TextStyle(
                                color: dark,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Klik & cek riwayat",
                            style: TextStyle(
                                color: primary2,
                                fontSize: 12.5,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            ...gopayIcons.map((item) => Padding(
                  padding: const EdgeInsets.only(right: 2, left: 8),
                  child: Flexible(
                    fit: FlexFit.tight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/icons/${item.icon}.svg',
                              color: secondary2,
                            ),
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          item.title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
