import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/core/widgets/button/primary_button.dart';
import 'package:wikimsglow/features/login/presentation/widgets/dont_have_account.dart';
import 'package:wikimsglow/features/login/presentation/widgets/email_text_form_field.dart';
import 'package:wikimsglow/features/login/presentation/widgets/login_text.dart';
import 'package:wikimsglow/features/login/presentation/widgets/remember_me_check_box.dart';

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                const LoginText(),
                const SizedBox(
                  height: 48,
                ),
                const EmailTextFormField(),
                const SizedBox(
                  height: 32,
                ),
                _passwordTextFormField(),
                const SizedBox(
                  height: 32,
                ),
                const RememberMeCheckBox(),
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
                const DontHaveAccount(),
              ],
            ),
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
