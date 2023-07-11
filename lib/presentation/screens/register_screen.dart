import 'package:flutter/material.dart';
import 'package:forms_app/presentation/widgets/widgets.dart';
import 'package:forms_app/responsive/responsive.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('New User'),
      ),
      body: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreenSize.height * 0.05),
      child: SingleChildScrollView(
        child: Column(
          children: [
            FlutterLogo(
              size: ScreenSize.height * 0.09,
            ),
            const _RegisterForm(),
            SizedBox(height: ScreenSize.height * 0.05),
          ],
        ),
      ),
    ));
  }
}

class _RegisterForm extends StatelessWidget {
  const _RegisterForm();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        CustomTextFormField(),
        SizedBox(height: ScreenSize.height * 0.03),
        CustomTextFormField(),
        SizedBox(height: ScreenSize.height * 0.05),
        FilledButton.tonalIcon(
            onPressed: () {},
            icon: const Icon(Icons.save),
            label: const Text('Save User')),
      ],
    ));
  }
}
