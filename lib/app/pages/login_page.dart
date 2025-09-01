import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/widgets/elevated_button.dart';
import 'package:driver_app/common/widgets/remember_me_widget.dart';
import 'package:driver_app/common/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../common/widgets/top_title_section.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailTEcontroller = TextEditingController();

  final TextEditingController passTEcontroller = TextEditingController();

  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,

      child: Scaffold(
        backgroundColor: AppColors.bodyColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 132),
                  TopTitleSection(),
                  SizedBox(height: 32),
                  TextFieldWidget(controller: emailTEcontroller, text: 'Email'),
                  SizedBox(height: 28),
                  TextFieldWidget(
                    controller: passTEcontroller,
                    text: "Password",
                    obs: true,
                    suffix: SvgPicture.asset(
                      
                      "assets/svg_icon/visibility.svg",
                      height: 24,
                      width: 24,
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        AppColors.visibilityIconColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  RememberMeWidget(
                    isChecked: isChecked,
                    onChange: () {
                      isChecked = !isChecked;
                    },
                  ),

                  SizedBox(height: 28),
                  Center(
                    child: ElevatedButtonStyle(text: "Sign In", onTap: () {}),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
