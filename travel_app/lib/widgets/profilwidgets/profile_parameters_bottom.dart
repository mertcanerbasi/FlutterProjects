import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/UserClass/userClass.dart';

class profile_parameters_bottom extends StatefulWidget {
  const profile_parameters_bottom({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserClass? user;

  @override
  State<profile_parameters_bottom> createState() =>
      _profile_parameters_bottomState();
}

class _profile_parameters_bottomState extends State<profile_parameters_bottom> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 360,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 147,
            child: Card(
              color: Color(0xFFFCFAF5),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Spacer(
                        flex: 14,
                      ),
                      const Expanded(
                          flex: 15,
                          child: Icon(
                            Icons.favorite,
                            size: 15,
                          )),
                      const Spacer(
                        flex: 14,
                      ),
                      Expanded(
                        flex: 292,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Inviter un ami',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF413C3C),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 11,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(
                        flex: 14,
                      ),
                      const Expanded(
                          flex: 15,
                          child: Icon(
                            Icons.star,
                            size: 15,
                          )),
                      const Spacer(
                        flex: 14,
                      ),
                      Expanded(
                        flex: 292,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Donner mon avis sur l’application',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF413C3C),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 11,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(
                        flex: 14,
                      ),
                      const Expanded(
                          flex: 15,
                          child: Icon(
                            Icons.info,
                            size: 15,
                          )),
                      const Spacer(
                        flex: 14,
                      ),
                      Expanded(
                        flex: 292,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Aide',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF413C3C),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 11,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(
                        flex: 14,
                      ),
                      const Expanded(
                          flex: 15,
                          child: Icon(
                            Icons.chat,
                            size: 15,
                          )),
                      const Spacer(
                        flex: 14,
                      ),
                      Expanded(
                        flex: 292,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nous contacter',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF413C3C),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 11,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(
                        flex: 14,
                      ),
                      const Expanded(
                          flex: 15,
                          child: Icon(
                            Icons.favorite,
                            size: 15,
                          )),
                      const Spacer(
                        flex: 14,
                      ),
                      Expanded(
                        flex: 292,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Inviter un ami',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF413C3C),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 11,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Spacer(flex: 15),
          Expanded(
            flex: 106,
            child: Card(
              color: Color(0xFFFCFAF5),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Spacer(
                        flex: 14,
                      ),
                      const Expanded(
                          flex: 15,
                          child: Icon(
                            Icons.document_scanner_rounded,
                            size: 15,
                          )),
                      const Spacer(
                        flex: 14,
                      ),
                      Expanded(
                        flex: 292,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Mentions légales',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF413C3C),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 11,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(
                        flex: 14,
                      ),
                      const Expanded(
                          flex: 15,
                          child: Icon(
                            Icons.badge,
                            size: 15,
                          )),
                      const Spacer(
                        flex: 14,
                      ),
                      Expanded(
                        flex: 292,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Conditions générales d’utilisation',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF413C3C),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 11,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(
                        flex: 14,
                      ),
                      const Expanded(
                          flex: 15,
                          child: Icon(
                            Icons.account_box_rounded,
                            size: 15,
                          )),
                      const Spacer(
                        flex: 14,
                      ),
                      Expanded(
                        flex: 292,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Politique de confidentialité',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF413C3C),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 11,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Spacer(flex: 15),
          Expanded(
            flex: 39,
            child: Card(
              color: Color(0xFFFCFAF5),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Spacer(
                        flex: 14,
                      ),
                      const Expanded(
                          flex: 15,
                          child: Icon(
                            Icons.logout,
                            size: 15,
                          )),
                      const Spacer(
                        flex: 14,
                      ),
                      Expanded(
                        flex: 292,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                await FirebaseAuth.instance.signOut();
                                Navigator.pop(context);
                                Navigator.pushNamed(context, '/');
                              },
                              child: Text(
                                'Déconnexion',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF413C3C),
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 11,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Spacer(flex: 62),
        ],
      ),
    );
  }
}