import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow2/modules/login/login_controller.dart';
import 'package:payflow2/shared/themes/app_colors.dart';
import 'package:payflow2/shared/themes/app_images.dart';
import 'package:payflow2/shared/themes/app_text_style.dart';
import 'package:payflow2/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.342,
              color: AppColors.primary,
            ),
            Positioned(
              top: 42,
              left: 0,
              right: 0,
              child: Image.asset(AppImages.person, width: 202, height: 362,)
            ),
            Positioned(
              bottom: size.height * 0.1,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
                    child: Text(
                      "Organize seus boletos em um só lugar", 
                      textAlign: TextAlign.center,
                      style: TextStyles.titleHome,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
                    child: SocialLoginButton(
                      onTab: (){
                        controller.googleSignIn(context);
                      }
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}