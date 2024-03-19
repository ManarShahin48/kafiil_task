import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kafiil_task/core/routes/pages_route_name.dart';
import 'package:kafiil_task/core/components/custom_app_bar.dart';
import 'package:kafiil_task/core/components/custom_button.dart';
import 'package:kafiil_task/core/components/custom_text_field.dart';
import 'package:kafiil_task/core/extentions/padding_ext.dart';
import 'package:kafiil_task/core/resources/uilites.dart';
import 'package:kafiil_task/features/login/bloc/login_cubit.dart';
import 'package:kafiil_task/features/login/bloc/login_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = LoginCubit.get(context);
          return GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: Scaffold(
              appBar: CustomAppBar(
                title: StringManager.accountLogin,
                onPressed: () {
                  Navigator.canPop(context);
                },
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      ImageManager.login,
                    ),
                    const CustomTextField(title: StringManager.emailAddress),
                    CustomTextField(
                      title: StringManager.password,
                      obscureText: cubit.showPassword,
                      suffixIcon: Container(
                        width: 10,
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: cubit.toggleShowPassword,
                          child: Icon(
                            cubit.showPassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: cubit.toggleGetRemembered,
                              icon: Icon(
                                cubit.getRemembered
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank_outlined,
                                color: ColorManager.primary,
                              ),
                            ),
                            const Text(
                              StringManager.rememberMe,
                              style: TextStyle(
                                fontSize: FontSize.s14,
                                fontWeight: FontWeightManager.w500,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          StringManager.forgotPassword,
                          style: TextStyle(
                            fontSize: FontSize.s14,
                            fontWeight: FontWeightManager.w500,
                          ),
                        ),
                      ],
                    ),
                    CustomButton(
                      text: StringManager.login,
                      onPressed: () {
                        EasyLoading.show();
                        cubit.login().then((value) {
                          EasyLoading.dismiss();
                        });
                      },
                    ).setVerticalPadding(context, 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          StringManager.haveAnAccount,
                          style: TextStyle(
                            fontSize: FontSize.s14,
                            fontWeight: FontWeightManager.w500,
                          ),
                        ),
                        TextButton(
                          child: const Text(
                            StringManager.register,
                            style: TextStyle(
                              fontSize: FontSize.s14,
                              fontWeight: FontWeightManager.w600,
                              color: ColorManager.primary,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              PagesRoutesName.register,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ).setOnlyPadding(context, 0, 0.046, 0.046, 0.046),
              ),
            ),
          );
        },
      ),
    );
  }
}
