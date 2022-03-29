import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/core/widgets/button/primary_button.dart';
import 'package:wikimsglow/core/widgets/checkbox/primary_checkbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;
  void togglePassword() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _loginText(),
              const SizedBox(
                height: 48,
              ),
              _emailTextFormField(),
              const SizedBox(
                height: 32,
              ),
              _passwordTextFormField(),
              const SizedBox(
                height: 32,
              ),
              _rememberMeCheckBox(),
              const SizedBox(
                height: 32,
              ),
              PrimaryButton(
                buttonColor: ColorTheme.primary,
                textValue: Strings.login,
                textColor: Colors.white,
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
              const PrimaryButton(
                buttonColor: Color(0xfffbfbfb),
                textValue: Strings.loginWithGoogle,
                textColor: Colors.black,
              ),
              const SizedBox(
                height: 50,
              ),
              _dontHaveAccount(),
            ],
          ),
        ),
      ),
    );
  }

  Row _dontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Strings.dontHaveAccount,
          style: textThemes(ColorTheme.textGrey, FontWeight.w500).bodyText1,
        ),
        TextButton(
            onPressed: () => {},
            child: Text(Strings.register,
                style:
                    textThemes(ColorTheme.primary, FontWeight.w500).bodyText1)),
      ],
    );
  }

  Row _rememberMeCheckBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const PrimaryCheckbox(),
        const SizedBox(
          width: 12,
        ),
        Text(Strings.rememberMe,
            style: textThemes(ColorTheme.textGrey, FontWeight.w500).bodyText1),
      ],
    );
  }

  Text _loginText() {
    return Text(
      Strings.loginToYourAccount,
      style: textThemes(ColorTheme.primary, FontWeight.w700).headline4,
    );
  }

  Container _emailTextFormField() {
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

  Container _passwordTextFormField() {
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
            onPressed: togglePassword,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
