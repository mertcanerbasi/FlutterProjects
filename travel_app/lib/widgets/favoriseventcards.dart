import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:travel_app/widgets/favoriteButtonWidget.dart';

class FavorisEventCards extends StatelessWidget {
  FavorisEventCards(
      {Key? key, required this.event_id, required this.assetImage})
      : super(key: key);
  String event_id;
  AssetImage assetImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 209),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 140),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image:
                          DecorationImage(image: assetImage, fit: BoxFit.cover),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 283),
                      ),
                      FavoriteButton(
                        eventId: event_id,
                      ),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 10),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 60),
              decoration: const BoxDecoration(
                color: Color(0xffFCFAF5),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Container(
                    height: AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 7),
                  ),
                  Row(
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 20),
                      ),
                      Text(
                        'Escapade dans le Puy-de-Dôme',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(context, 14),
                          fontWeight: FontWeight.w600,
                          color: Color(0xff413C3C),
                        ),
                      ),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 7),
                      ),
                    ],
                  ),
                  Container(
                    width: AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 335),
                    child: Row(
                      children: [
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 20),
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 14),
                          height: AdaptiveScreenSize()
                              .getadaptiveScreenSizeHeight(context, 14),
                          child: Image.asset(
                            'assets/locationpin.png',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 5),
                        ),
                        Text(
                          'Auvergne',
                          style: GoogleFonts.poppins(
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 14),
                              color: Color(0xff413C3C),
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 14),
                          height: AdaptiveScreenSize()
                              .getadaptiveScreenSizeHeight(context, 14),
                          child: Image.asset(
                            'assets/locationpin.png',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 5),
                        ),
                        Text(
                          '3 spots',
                          style: GoogleFonts.poppins(
                            fontSize: AdaptiveTextSize()
                                .getadaptiveTextSize(context, 12),
                            color: Color(0xff7D7D7D),
                          ),
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 20),
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 14),
                          height: AdaptiveScreenSize()
                              .getadaptiveScreenSizeHeight(context, 14),
                          child: Image.asset(
                            'assets/locationpin.png',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 5),
                        ),
                        Text(
                          '36 km',
                          style: GoogleFonts.poppins(
                            fontSize: AdaptiveTextSize()
                                .getadaptiveTextSize(context, 12),
                            color: Color(0xff7D7D7D),
                          ),
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
