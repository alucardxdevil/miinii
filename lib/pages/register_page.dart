import 'package:flutter/material.dart';
import 'package:miinii/widgets/buttom_login.dart';
import 'package:miinii/widgets/custom_input.dart';
import 'package:miinii/widgets/label_input.dart';
import 'package:miinii/widgets/logo_login.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7c50b9),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                SizedBox(
                    // child: Text(
                    //   'M     I     I     N     I     I',
                    //   textAlign: TextAlign.center,
                    //   overflow: TextOverflow.fade,
                    //   strutStyle: StrutStyle(
                    //     height: 0.5,
                    //     leading: 2.5,
                    //   ),
                    //   style: TextStyle(
                    //     shadows: [
                    //       Shadow(
                    //         blurRadius: 10,
                    //         color: Colors.black,
                    //         offset: Offset(6, 10),
                    //       ),
                    //     ],
                    //     textBaseline: TextBaseline.ideographic,
                    //     fontStyle: FontStyle.normal,
                    //     fontSize: 40,
                    //     fontWeight: FontWeight.w300,
                    //     color: Colors.white,
                    //   ),
                    // ),
                    ),
                Logo(
                  title: 'Register',
                ),
                _Form(),
                Labels(
                  route: 'login',
                  titles: 'Already have an account?',
                  subtitle: 'Login',
                ),
                Text(
                  'Terms and conditions',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final nameCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.perm_identity,
            placeholder: 'Name',
            textController: nameCtrl,
            keyboardType: TextInputType.text,
          ),
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Email',
            textController: emailCtrl,
            keyboardType: TextInputType.emailAddress,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Password',
            textController: passwordCtrl,
            isPassword: true,
          ),
          ButtomLogin(
            text: 'Login',
            onPressed: () {
              print(emailCtrl.text);
              print(passwordCtrl.text);
            },
          ),
        ],
      ),
    );
  }
}
