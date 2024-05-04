import 'package:dacs3/constants.dart';
import 'package:flutter/material.dart';

import '../../../themes/font_family.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: const Icon(Icons.menu),
                    onTap: () {},
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Cloud',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                fontFamily: FontFamily.dancing,
                                color: Colors.blue,
                              ),
                            ),
                            TextSpan(
                              text: 'mate',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                fontFamily: FontFamily.dancing,
                                color: Theme.of(context).textTheme.bodyText1!.color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Column(
                children: [
                  Text(
                    'Chào mừng User đến với chúng tôi',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: FontFamily.timenewroman,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 3), // Khoảng cách giữa các dòng
                  Text(
                    'Bạn muốn học gì hôm nay ?',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: FontFamily.timenewroman,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}