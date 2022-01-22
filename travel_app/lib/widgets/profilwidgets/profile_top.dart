import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/pages/profil/parameterspage.dart';
import 'package:travel_app/pages/profil/profilpage.dart';
import 'package:travel_app/widgets/profilwidgets/profilbuttons.dart';

class profile_top extends StatefulWidget {
  profile_top({Key? key, required this.user, required this.selected})
      : super(key: key);

  final UserClass? user;
  String selected;

  @override
  State<profile_top> createState() => _profile_topState();
}

class _profile_topState extends State<profile_top> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 350,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex: 30, child: Container()),
            Expanded(
              flex: 20,
              child: Row(
                children: [
                  Expanded(
                    flex: 257,
                    child: Container(),
                  ),
                  Expanded(
                      flex: 78,
                      child: Text(
                        'Enregistrer',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff006696)),
                      )),
                ],
              ),
            ),
            Expanded(flex: 4, child: Container()),
            Expanded(
                flex: 1,
                child: Container(
                  color: Color(0xFFB7B7B7),
                )),
            Expanded(flex: 29, child: Container()),
            Expanded(
              flex: 115,
              child: CircleAvatar(
                radius: 30, // Image radius
                backgroundColor: Colors.white,
                child: ClipOval(
                  clipBehavior: Clip.antiAlias,
                  child: widget.user?.user_image == null
                      ? SizedBox()
                      : Image.network('${widget.user?.user_image}'),
                ),
              ),
            ),
            Expanded(flex: 14, child: Container()),
            Expanded(
              flex: 25,
              child: Center(
                child: Text(
                  'Bienvenue',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Expanded(
                flex: 41,
                child: Center(
                  child: Text(
                    '${widget.user?.user_name?.toUpperCase()}',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                )),
            Expanded(flex: 23, child: Container()),
            Expanded(
              flex: 30,
              child: Column(
                children: [
                  Expanded(
                    flex: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            widget.selected = 'Profil';
                            setState(() {});
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ProfilPage(user: widget.user)));
                          },
                          child: ProfilButtons(
                            buttontext: 'Profil',
                            isselected:
                                widget.selected == 'Profil' ? true : false,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            widget.selected = 'Abonnement';
                            setState(() {});
                          },
                          child: ProfilButtons(
                            buttontext: 'Abonnement',
                            isselected:
                                widget.selected == 'Abonnement' ? true : false,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            widget.selected = 'Notifications';
                            setState(() {});
                          },
                          child: ProfilButtons(
                            buttontext: 'Notifications',
                            isselected: widget.selected == 'Notifications'
                                ? true
                                : false,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            widget.selected = 'Paramètres';
                            setState(() {});
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ParametersPage(user: widget.user)));
                          },
                          child: ProfilButtons(
                            buttontext: 'Paramètres',
                            isselected:
                                widget.selected == 'Paramètres' ? true : false,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(),
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