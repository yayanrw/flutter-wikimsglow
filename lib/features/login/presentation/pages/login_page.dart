import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/core/widgets/button/primary_button.dart';
import 'package:wikimsglow/features/login/presentation/widgets/dont_have_account.dart';
import 'package:wikimsglow/features/login/presentation/widgets/forgot_password.dart';
import 'package:wikimsglow/features/login/presentation/widgets/login_text.dart';
import 'package:wikimsglow/features/others/presentation/pages/under_development.dart';

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
                PrimaryButton(
                  buttonColor: ColorTheme.primary,
                  textValue: Strings.login,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: Text(
                    Strings.or,
                    style: textThemes(ColorTheme.textGrey, FontWeight.w500)
                        .bodyText1,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                PrimaryButton(
                  buttonColor: ColorTheme.bgWhiteSmooth,
                  textValue: Strings.loginWithGoogle,
                  textColor: Colors.black,
                  onPressed: () =>
                      Navigator.pushNamed(context, UnderDevelopment.routeName),
                ),
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

  Container passwordTextFormField() {
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

  Container emailTextFormField() {
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
