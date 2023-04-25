import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:land_registration/constant/constants.dart';
import 'package:universal_html/html.dart' as html;
import '../constant/utils.dart';

class LeftDescription extends StatelessWidget {
  const LeftDescription({Key? key}) : super(key: key);
  static final appContainer = kIsWeb
      ? html.window.document.querySelectorAll('flt-glass-pane')[0]
      : null;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // title
//         const FittedBox(
//           child: Text('''Property
// Registration by Team EliteByte''',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 color: Color(0xff28313b),
//                 fontSize: 35,
//                 fontWeight: FontWeight.bold,
//                 fontStyle: FontStyle.normal,
//                 //letterSpacing: 1.5,
//               )),
//         ),
        // Description

        const SizedBox(
          height: 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            // button
            //
            const SizedBox(width: 40),
            GestureDetector(
              onTap: () {
                launchUrl("https://github.com/code-bajju/Blockchain_LandRegistration");
              },
              child: MouseRegion(
                onHover: (PointerHoverEvent evt) {
                  appContainer?.style.cursor = 'pointer';
                },
                onExit: (PointerExitEvent evt) {
                  appContainer?.style.cursor = 'default';
                },
                child: Column(
                  children: const [
                    SizedBox(
                      width: 34,
                      height: 34,
                      child: Icon(Icons.play_circle_fill),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("View demo",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff47afc9),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 2,
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 100,
        )
      ],
    );
  }
}
