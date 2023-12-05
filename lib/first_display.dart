import 'package:flutter/material.dart';

class FirstDisplay extends StatefulWidget {
  const FirstDisplay({super.key});

  @override
  State<FirstDisplay> createState() => _FirstDisplayState();
}

class _FirstDisplayState extends State<FirstDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        // launchscreenmV5 (1:2)
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          width: double.infinity,
          height: 844,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                // statustopcVh (1:7)
                left: 24,
                top: 10,
                child: SizedBox(
                  width: 343,
                  height: 24,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // Kuu (1:20)
                        margin: const EdgeInsets.fromLTRB(0, 0, 232, 0),
                        child: const Text(
                          '9.40',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.2125,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // signalDkP (1:8)
                        margin: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                        width: 24,
                        height: 24,
                        child: Image.network(
                          'https://cdn0-production-images-kly.akamaized.net/eUiT6t2iHH-XG9lMKElmlJHzyqM=/1200x900/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/901147/original/024812800_1434341312-dragonballz-1maxresdefault.jpg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      Container(
                        // wifiwRV (1:12)
                        margin: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                        width: 24,
                        height: 24,
                        child: Image.network(
                          'https://cdn0-production-images-kly.akamaized.net/eUiT6t2iHH-XG9lMKElmlJHzyqM=/1200x900/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/901147/original/024812800_1434341312-dragonballz-1maxresdefault.jpg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      SizedBox(
                        // bateraifcP (1:16)
                        width: 24,
                        height: 24,
                        child: Image.network(
                          'https://cdn0-production-images-kly.akamaized.net/eUiT6t2iHH-XG9lMKElmlJHzyqM=/1200x900/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/901147/original/024812800_1434341312-dragonballz-1maxresdefault.jpg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // ellipse6bkw (14:5)
                left: 0,
                top: 37,
                child: Align(
                  child: SizedBox(
                    width: 770,
                    height: 770,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(385),
                        border: const Border(),
                        gradient: const LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0, 1),
                          colors: <Color>[Color(0xfffefeff), Color(0xb5ffffff)],
                          stops: <double>[0, 1],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // ellipse5F4o (12:4)
                left: 0,
                top: 160,
                right: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 409,
                    height: 409,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(295.5),
                        border: const Border(),
                        gradient: const LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0, 1),
                          colors: <Color>[Color(0xfff8f6ff), Color(0xb5fefeff)],
                          stops: <double>[0, 1],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // ellipse4Vzj (12:3)
                left: 0,
                top: 220,
                right: 3,
                child: Align(
                  child: SizedBox(
                    width: 409,
                    height: 409,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(204.5),
                        border: const Border(),
                        gradient: const LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0, 1),
                          colors: <Color>[Color(0xfff0eeff), Color(0xb5f7f5ff)],
                          stops: <double>[0, 1],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // ellipse3aWP (12:2)
                left: 37,
                top: 264,
                child: Align(
                  child: SizedBox(
                    width: 316,
                    height: 316,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(158),
                        border: const Border(),
                        gradient: const LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0, 1),
                          colors: <Color>[Color(0xffe4e0ff), Color(0xb5f7f5ff)],
                          stops: <double>[0, 1],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // ellipse2fXq (11:23)
                left: 67,
                top: 294,
                child: Align(
                  child: SizedBox(
                    width: 256,
                    height: 256,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(128),
                        border: const Border(),
                        gradient: const LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0, 1),
                          colors: <Color>[Color(0xffd1caff), Color(0xb5f7f5ff)],
                          stops: <double>[0, 1],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // ellipse1xmq (11:22)
                left: 89,
                top: 317,
                child: Align(
                  child: SizedBox(
                    width: 212,
                    height: 212,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(106),
                        border: const Border(),
                        gradient: const LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0, 1),
                          colors: <Color>[Color(0xffb8adff), Color(0xa3d3ccff)],
                          stops: <double>[0, 1],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // imageq4w (11:20)
                left: 106,
                top: 335,
                child: Align(
                  child: SizedBox(
                    width: 176,
                    height: 176,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(86),
                        border: const Border(),
                        gradient: const LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0, 1),
                          colors: <Color>[Color(0xffa599f9), Color(0x8ea497ff)],
                          stops: <double>[0, 1],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // imageJjD (11:19)
                left: 122,
                top: 350,
                child: Align(
                  child: SizedBox(
                    width: 145,
                    height: 145,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(86),
                        border: const Border(),
                        gradient: const LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0, 1),
                          colors: <Color>[Color(0xff8e81e4), Color(0x996f60db)],
                          stops: <double>[0, 1],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // imagebCX (11:10)
                left: 141,
                top: 368,
                child: Align(
                  child: SizedBox(
                    width: 108,
                    height: 108,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(86),
                        border: const Border(),
                        gradient: const LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0, 1),
                          colors: <Color>[Color(0xff6f60db), Color(0x996f60db)],
                          stops: <double>[0, 1],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // image4ro (11:9)
                left: 158,
                top: 386,
                child: Align(
                  child: SizedBox(
                    width: 73,
                    height: 73,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(86),
                        border: Border.all(color: const Color(0xff9e8fff)),
                        color: const Color(0xffd8d2ff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // imagezEf (1:21)
                left: 163,
                top: 390,
                child: Align(
                  child: SizedBox(
                    width: 64,
                    height: 64,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(86),
                        border: Border.all(color: const Color(0xff9e8fff)),
                        color: const Color(0xffb4a9ff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // component2KGw (232:202)
                left: 176,
                top: 401,
                child: Align(
                  child: SizedBox(
                    width: 38,
                    height: 43,
                    child: Image.network(
                      'https://cdn0-production-images-kly.akamaized.net/eUiT6t2iHH-XG9lMKElmlJHzyqM=/1200x900/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/901147/original/024812800_1434341312-dragonballz-1maxresdefault.jpg',
                      width: 38,
                      height: 43,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
