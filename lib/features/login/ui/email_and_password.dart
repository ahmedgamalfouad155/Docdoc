import 'package:docdoc/core/helpers/app_regex.dart';
import 'package:docdoc/core/helpers/spaceing.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/ui/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  //   final _formKey = GlobalKey<FormState>();
  bool isObscureText = true;

   bool hasLowerCase = false;
   bool hasUpperCase = false;
   bool hasNumber = false;
   bool hasSpecialCharacter = false;
   bool hasMinLength = false;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener(){
    passwordController.addListener((){
      setState(() {
       hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
       hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
       hasNumber = AppRegex.hasNumber(passwordController.text);
       hasSpecialCharacter = AppRegex.hasSpecialCharacter(passwordController.text);
       hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: "Email",
            validator: (value) {
              if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
                return "Plese enter your email";
              }
            },
            controller: context.read<LoginCubit>().emailCnotroller,
          ),
          verticalSpace(18),
          AppTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Plese enter your password";
              }
            },
            controller: context.read<LoginCubit>().passwordController,
            hintText: "Password",
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
                color: ColorsManager.mainBlue,
              ),
            ),
            isObscureText: isObscureText,
          ),
          verticalSpace(24),
          PasswordValidation(
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasNumber: hasNumber,
              hasSpecialCharacter: hasSpecialCharacter,
              hasMinLength: hasMinLength, 
          ),
        ],
      ),
    );
  } 
  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
