import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/controller/login_notifier.dart';
import 'package:driver_app/common/widgets/elevated_button.dart';
import 'package:driver_app/common/widgets/remember_me_widget.dart';
import 'package:driver_app/common/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../common/widgets/top_title_section.dart';

// ignore: must_be_immutable
class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginController = ref.read(loginProvider.notifier);

    final teState = ref.watch(loginProvider);

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
                  TextFieldWidget(
                    controller: loginController.emailTEcontroller,
                    errorText: teState.emailErrorMessage,
                    text: 'Email',
                    onChanged: (v) {
                      loginController.emailChecker();
                    },
                  ),
                  SizedBox(height: 28),

                  TextFieldWidget(
                    controller: loginController.passTEcontroller,
                    text: "Password",
                    errorText: teState.passErrorMessage,
                    onChanged: (v) {
                      loginController.passChecker();
                    },
                    obs: teState.isObscure,
                    suffix: InkWell(
                      onTap: () {
                        loginController.showPassword();
                      },
                      child: SvgPicture.asset(
                        teState.isObscure
                            ? "assets/svg_icon/visibility.svg"
                            : "assets/svg_icon/visibility_off.svg",
                        height: 24,
                        width: 24,
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          AppColors.visibilityIconColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  RememberMeWidget(
                    isChecked: teState.isChecked,
                    onChange: () {
                      //isChecked = !isChecked;
                      loginController.rememberMe();
                    },
                  ),

                  SizedBox(height: 28),
                  Center(
                    child: ElevatedButtonStyle(
                      onTap: teState.isButtonEnable!
                          ? () async {
                              await loginController.login(context);
                            }
                          : null,
                      text: "Sign In",
                    ),
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
