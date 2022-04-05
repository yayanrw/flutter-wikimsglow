import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wikimsglow/core/routes/router.gr.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';
import 'package:wikimsglow/core/theme/my_input_decoration_theme.dart';
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
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  final _email = TextEditingController();
  final _password = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  loginText(),
                  // Consumer<LoginNotifier>(builder: (context, value, child) {
                  //   if (value.loginState == RequestState.loading) {
                  //     return const Center(child: CircularProgressIndicator());
                  //   } else if (value.loginState == RequestState.loaded) {
                  //     return const Center(child: Text('Sudah'));
                  //   } else {
                  //     return Center(child: Text(value.message));
                  //   }
                  // }),
                  const SizedBox(
                    height: 48,
                  ),
                  emailTextFormField(),
                  const SizedBox(
                    height: 32,
                  ),
                  passwordTextFormField(),
                  const SizedBox(
                    height: 8,
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
      ),
    );
  }

  Widget loginButton(BuildContext context) {
    return PrimaryButton(
      buttonColor: MyColors.primary,
      textValue: Strings.login,
      textColor: Colors.white,
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          context.router.push(const MyLayoutRoute());
          // Future.microtask(() {
          //   Provider.of<LoginNotifier>(context, listen: false)
          //       .fetchLogin(_email.text, _password.text);
          // });
        }
      },
    );
  }

  Widget emailTextFormField() {
    return TextFormField(
      controller: _email,
      // validator: (value) {
      //   return Validations.isEmpty(value!)
      //       ? Strings.fieldRequired
      //       : Validations.isValidEmail(value)
      //           ? null
      //           : Strings.invalidEmail;
      // },
      keyboardType: TextInputType.emailAddress,
      cursorColor: MyColors.primary,
      decoration: emailInputDecoration(),
    );
  }

  Widget passwordTextFormField() {
    return TextFormField(
      controller: _password,
      // validator: (value) {
      //   return Validations.isEmpty(value!)
      //       ? Strings.fieldRequired
      //       : Validations.isLengthGreaterThan(value, 6)
      //           ? null
      //           : Strings.fieldTooShort;
      // },
      cursorColor: MyColors.primary,
      obscureText: !_passwordVisible,
      decoration:
          passwordInputDecoration(_passwordVisible, _togglePasswordVisibility),
    );
  }

  @override
  void dispose() {
    _formKey.currentState!.dispose();
    _email.dispose();
    _password.dispose();
    _passwordVisible = false;
    super.dispose();
  }
}
