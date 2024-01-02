import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:shubham_tiwari_s_application1/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/core/utils/validation_functions.dart';
import 'package:shubham_tiwari_s_application1/widgets/custom_elevated_button.dart';
import 'package:shubham_tiwari_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(all: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowleft,
                              height: getSize(24),
                              width: getSize(24),
                              onTap: () {
                                onTapImgArrowleftone(context);
                              }),
                          Opacity(
                              opacity: 0.87,
                              child: Padding(
                                  padding: getPadding(left: 12, top: 48),
                                  child: Text("lbl_log_in".tr,
                                      style: theme.textTheme.displaySmall))),
                          Align(
                              alignment: Alignment.center,
                              child: Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(top: 17),
                                      child: Text(
                                          "msg_put_your_email_address".tr,
                                          style: theme.textTheme.titleLarge)))),
                          BlocSelector<LoginBloc, LoginState,
                                  TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    controller: emailController,
                                    margin: getMargin(top: 36),
                                    hintText: "lbl_your_email".tr,
                                    hintStyle: CustomTextStyles
                                        .bodySmallPoppinsBluegray300,
                                    textInputType: TextInputType.emailAddress,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 16,
                                            top: 12,
                                            right: 10,
                                            bottom: 12),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgMail)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(48)),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    });
                              }),
                          BlocSelector<LoginBloc, LoginState,
                                  TextEditingController?>(
                              selector: (state) => state.passwordController,
                              builder: (context, passwordController) {
                                return CustomTextFormField(
                                    controller: passwordController,
                                    margin: getMargin(top: 16),
                                    hintText: "lbl_password".tr,
                                    hintStyle: CustomTextStyles
                                        .bodySmallPoppinsBluegray300,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 16,
                                            top: 12,
                                            right: 10,
                                            bottom: 12),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgLockBlueGray300)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(48)),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "Please enter valid password";
                                      }
                                      return null;
                                    },
                                    obscureText: true);
                              }),
                          CustomElevatedButton(
                              height: getVerticalSize(56),
                              text: "lbl_next".tr,
                              margin: getMargin(top: 16),
                              buttonStyle: CustomButtonStyles.fillPrimary),
                          Spacer(),
                          Align(
                              alignment: Alignment.center,
                              child: Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(bottom: 18),
                                      child: Text(
                                          "msg_don_t_have_an_account".tr,
                                          style: theme.textTheme.bodySmall))))
                        ])))));
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapImgArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
