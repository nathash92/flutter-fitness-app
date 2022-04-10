import 'package:fitness/constants/app_colors.dart';
import 'package:fitness/constants/app_configs.dart';
import 'package:fitness/shared/widgets/gapper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gapper(gap: 20.0),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Icon(Icons.arrow_back_ios),
              ),
              const Gapper(gap: 30.0),
              const _Welcome(),
              const Gapper(gap: 50.0),
              const _Form()
            ],
          ),
        ),
      ),
    );
  }
}

class _Welcome extends StatelessWidget {
  const _Welcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Welcome to Fitness!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          "Hello there, sign in to \ncontinue!",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
              fontSize: 15.0),
        )
      ],
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  bool showPwd = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInputLabel("Email address"),
        const Gapper(gap: 3.0),
        _buildEmailInput(),
        const Gapper(gap: 10.0),
        _buildInputLabel("Password"),
        const Gapper(gap: 5.0),
        _buildPasswordInput(),
        const Gapper(gap: 5.0),
        _buildForgotPwdLink(),
        const Gapper(gap: 20.0),
        _buildLoginButton(),
        const Gapper(gap: 20.0),
        const Center(
          child: Text('Or Login with'),
        ),
        const Gapper(gap: 20.0),
        _buildGmailButton(),
        const Gapper(gap: 10.0),
        _buildFacebookButton(),
        const Gapper(gap: 20.0),
        _buildRegisterLink()
      ],
    );
  }

  Row _buildRegisterLink() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Dont have an account?',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Gapper(
          gap: 5.0,
          type: "horizontal",
        ),
        InkWell(
          child: Text(
            'Register',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            ),
          ),
        )
      ],
    );
  }

  SizedBox _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        child: const Text("Login"),
        style: ElevatedButton.styleFrom(
          primary: AppColors.primaryColor,
          textStyle: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  SizedBox _buildForgotPwdLink() {
    return SizedBox(
      width: double.infinity,
      child: Text(
        "Forgot Password",
        textAlign: TextAlign.right,
        style: TextStyle(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Text _buildInputLabel(String label) {
    return Text(
      label,
      style: AppConfigs.inputLabelStyle(),
    );
  }

  TextField _buildEmailInput() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Enter Email",
        filled: true,
        fillColor: AppColors.inputBgColor,
        focusColor: AppColors.primaryColor,
        focusedBorder: AppConfigs.inputFocusedBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  TextField _buildPasswordInput() {
    return TextField(
      obscureText: !showPwd,
      decoration: InputDecoration(
        hintText: "Enter Password",
        filled: true,
        fillColor: AppColors.inputBgColor,
        focusedBorder: AppConfigs.inputFocusedBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              showPwd = !showPwd;
            });
          },
          child: Icon(
            showPwd ? Icons.visibility_off_outlined : Icons.visibility_outlined,
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }

  SizedBox _buildGmailButton() {
    return SizedBox(
      width: double.infinity,
      height: 45.0,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: const [
            Icon(
              Icons.email_rounded,
              color: Colors.black,
            ),
            Expanded(
              child: Text(
                "Connect with Google",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[300],
        ),
      ),
    );
  }

  SizedBox _buildFacebookButton() {
    return SizedBox(
      width: double.infinity,
      height: 45.0,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: const [
            Icon(
              Icons.facebook_rounded,
            ),
            Expanded(
              child: Text(
                "Connect with Facebook",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(64, 101, 171, 1),
        ),
      ),
    );
  }
}
