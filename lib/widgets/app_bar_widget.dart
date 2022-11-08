import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/widgets/custom_text.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? mainButtonTitle;
  final Icon? leadingIcon;
  final Widget? form;
  final List<Widget>? action;
  final Widget? folatingActionButtion;
  final bool showTermsText;
  final void Function()? onMainButtonTapped;
  final void Function()? onCreateAccountTapped;
  final void Function()? onForgotPassword;
  final void Function()? onBackPressed;
  final void Function()? onSignInWithApple;
  final void Function()? onSignInWithGoogle;
  final String? validationMessage;
  final bool busy;

  const CustomAppBarWidget({
    Key? key,
    this.title,
    this.action,
    this.leadingIcon,
    this.subtitle,
    this.mainButtonTitle,
    this.form,
    this.onMainButtonTapped,
    this.onCreateAccountTapped,
    this.onForgotPassword,
    this.onBackPressed,
    this.onSignInWithApple,
    this.onSignInWithGoogle,
    this.validationMessage,
    this.showTermsText = false,
    this.folatingActionButtion,
    this.busy = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteTextColor,
      key: key,
      floatingActionButton: folatingActionButtion,
      appBar: AppBar(
        key: key,
        backgroundColor: whiteTextColor,
        elevation: 0.0,
        leading: IconButton(
          icon: leadingIcon!,
          onPressed: onBackPressed,
        ),
        title: CustomText.appBarText(title!),
        actions: action,
      ),
      body: form,
    );
  }
}
