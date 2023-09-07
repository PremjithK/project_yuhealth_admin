import 'package:flutter/material.dart';
import 'package:yu_health_admin/custom_widgets/buttons.dart';
import 'package:yu_health_admin/custom_widgets/spacing.dart';
import 'package:yu_health_admin/custom_widgets/text_fields.dart';
import 'package:yu_health_admin/custom_widgets/text_types.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //Form Controllers
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final deviceHeight = MediaQuery.of(context).size.height;
    // final deviceWidth = MediaQuery.of(context).size.width;

    // UI
    return Scaffold(
      backgroundColor: theme.background,
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: deviceHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Form Items
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const MainHeading(text: 'Yu Admin'),
                        heightspace(30),
                        MyTextFormField(
                          controller: _emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Invalid Email';
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: const Icon(Icons.person),
                          hint: 'Username',
                        ),
                        heightspace(10),
                        MyTextFormField(
                          controller: _passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            }
                          },
                          keyboardType: TextInputType.visiblePassword,
                          prefixIcon: const Icon(Icons.lock),
                          isPassword: true,
                          hint: 'Password',
                        ),
                        heightspace(20),
                        //primaryButton('LOGIN', (), context),
                        MyPrimaryButton(
                          label: 'Log In',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
