import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/core/widgets/button/primary_button.dart';
import 'package:wikimsglow/features/login/presentation/widgets/dont_have_account.dart';
import 'package:wikimsglow/features/login/presentation/widgets/forgot_password.dart';
import 'package:wikimsglow/features/login/presentation/widgets/login_text.dart';
import 'package:wikimsglow/features/login/presentation/widgets/login_with_google_button.dart';
import 'package:wikimsglow/features/login/presentation/widgets/or_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;
  void _togglePassword() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                loginText(),
                const SizedBox(
                  height: 48,
                ),
                emailTextFormField(),
                const SizedBox(
                  height: 32,
                ),
                passwordTextFormField(),
                const SizedBox(
                  height: 32,
                ),
                forgotPassword(context),
                const SizedBox(
                  height: 32,
                ),
                loginButton(context),
                const SizedBox(
                  height: 24,
                ),
                orText(),
                const SizedBox(
                  height: 24,
                ),
                loginWithGoogleButton(context),
                const SizedBox(
                  height: 50,
                ),
                dontHaveAccount(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton(BuildContext context) {
    return PrimaryButton(
      buttonColor: ColorTheme.primary,
      textValue: Strings.login,
      textColor: Colors.white,
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return LoadingAnimationWidget.waveDots(
                color: Colors.white,
                size: 100,
              );
            });
      },
    );
  }

  Widget passwordTextFormField() {
    return Container(
      decoration: BoxDecoration(
        color: ColorTheme.textWhiteGrey,
        borderRadius: BorderRadius.circular(14.0),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: TextFormField(
        cursorColor: ColorTheme.primary,
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
          hintText: Strings.password,
          hintStyle: textThemes(ColorTheme.textGrey, FontWeight.w500).bodyText1,
          suffixIcon: IconButton(
            color: ColorTheme.textGrey,
            splashRadius: 1,
            icon: Icon(_passwordVisible
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined),
            onPressed: _togglePassword,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget emailTextFormField() {
    return Container(
      decoration: BoxDecoration(
        color: ColorTheme.textWhiteGrey,
        borderRadius: BorderRadius.circular(14.0),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        cursorColor: ColorTheme.primary,
        decoration: InputDecoration(
          hintText: Strings.email,
          hintStyle: textThemes(ColorTheme.textGrey, FontWeight.w500).bodyText1,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
