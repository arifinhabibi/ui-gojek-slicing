import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/theme.dart';

class SearchComponent extends StatelessWidget {
  const SearchComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
      child: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xffe8e8e8))),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/search_dark.svg',
                    color: dark,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Cari layanan, makanan, & tujuan",
                    style: TextStyle(fontSize: 12.5, color: Color(0xff999798)),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          SizedBox(
            width: 35,
            height: 35,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35 / 2),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset('assets/images/avatar.png'),
                ),
                Positioned(
                    width: 16,
                    height: 16,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35 / 2),
                          color: const Color(0xffD1E7EE)),
                      clipBehavior: Clip.hardEdge,
                      child: SvgPicture.asset(
                        'assets/icons/goclub.svg',
                        color: secondary3,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
