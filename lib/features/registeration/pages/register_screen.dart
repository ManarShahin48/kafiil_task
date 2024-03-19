import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kafiil_task/core/components/fav_social_media.dart';
import 'package:kafiil_task/core/components/stepper.dart';
import 'package:kafiil_task/core/extentions/padding_ext.dart';

import '../../../core/resources/uilites.dart';
import '../../../core/components/custom_radio.dart';
import '../../../core/components/custom_app_bar.dart';
import '../../../core/components/custom_button.dart';
import '../../../core/components/custom_text_field.dart';
import '../bloc/register_cubit.dart';
import '../bloc/register_state.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = RegisterCubit.get(context);
          return GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: Scaffold(
              appBar: CustomAppBar(
                title: StringManager.register,
                onPressed: () {
                  Navigator.pop(context);
                  cubit.clear();
                },
              ),
              body: Column(
                children: [
                  CustomStepper(step1: cubit.currentStep),
                  Expanded(
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: cubit.pageController,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      title: StringManager.firstName,
                                    ),
                                  ),
                                  Expanded(
                                    child: CustomTextField(
                                      title: StringManager.lastName,
                                    ),
                                  ),
                                ],
                              ),
                              const CustomTextField(
                                  title: StringManager.emailAddress),
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
                              CustomTextField(
                                title: StringManager.confirmPassword,
                                obscureText: cubit.showConfirmPassword,
                                suffixIcon: Container(
                                  width: 10,
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                    onTap: cubit.toggleShowConfirmPassword,
                                    child: Icon(
                                      cubit.showConfirmPassword
                                          ? Icons.visibility_off_outlined
                                          : Icons.visibility_outlined,
                                    ),
                                  ),
                                ),
                              ),
                              const CustomRadioButton(
                                text: StringManager.userType,
                                three: true,
                                radio1: StringManager.seller,
                                radio2: StringManager.buyer,
                                radio3: StringManager.both,
                              ),
                              CustomButton(
                                text: StringManager.register,
                                width: mediaQuery.size.width / 2,
                                onPressed: () {
                                  cubit.toStepTwo(false);
                                  cubit.jumpToPage(1);
                                },
                              ).setVerticalPadding(context, 0.02),
                            ],
                          ).setOnlyPadding(context, 0, 0.046, 0.046, 0.046),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              CustomTextField(
                                title: StringManager.about,
                                isAbout: true,
                                suffixIcon: Container(
                                  width: 10,
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: const SizedBox(),
                                  ),
                                ),
                              ),
                              const CustomRadioButton(
                                text: StringManager.gender,
                                radio1: StringManager.male,
                                radio2: StringManager.female,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(StringManager.favSocialMedia),
                                  FavSocialMedia(
                                    checked: true,
                                    onPressed: () {},
                                    text: "FaceBook",
                                  ),
                                ],
                              ),
                              CustomButton(
                                text: StringManager.submit,
                                width: mediaQuery.size.width,
                                onPressed: () {},
                              ).setVerticalPadding(context, 0.02),
                            ],
                          ).setOnlyPadding(context, 0, 0.046, 0.046, 0.046),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
