import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager/constants.dart';
import 'package:task_manager/core/utils/app_router.dart';
import 'package:task_manager/features/sign_in/data/repos/sign_in_repo_impl.dart';
import 'package:task_manager/features/sign_in/presentation/views/widgets/custom_button.dart';
import 'package:task_manager/features/sign_in/presentation/views/widgets/custom_text_field.dart';

class SignInView extends StatelessWidget {
  @override
  bool isLoading = false;

  final GlobalKey<FormState> formKey = GlobalKey();

  String? email, password;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const SizedBox(height: 75),
              Image.asset(
                kLogo,
                height: 200,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Task Manager',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const Row(
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFormTextField(
                onChanged: (data) {
                  email = data;
                },
                hintText: 'User Name',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomFormTextField(
                obsecure: true,
                onChanged: (data) {
                  password = data;
                },
                hintText: 'Password',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onTap: () {
                  SignInRepoImpl().signIn("atuny0", "9uQFF1Lh");
                }
                // () async {
                //   if (formKey.currentState!.validate()) {
                //     BlocProvider.of<AuthBloc>(context).add(
                //         LoginEvent(email: email!, password: password!));
                // isLoading = true;

                // try {
                //   await loginUser();
                //   Navigator.pushNamed(
                //     context,
                //     ChatPage.id,
                //     arguments: email,
                //   );
                // } on FirebaseAuthException catch (ex) {
                //   if (ex.code == 'wrong-password') {
                //     showSnackBar(context,
                //         'Wrong password provided for that user.');
                //   } else if (ex.code == 'user-not-found') {
                //     showSnackBar(
                //         context, 'No user found for that email.');
                //   }
                // } catch (ex) {
                //   showSnackBar(context, 'there was an error');
                // }
                // isLoading = false;

                ,
                title: 'LOGIN',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'don\'t have an account?  ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kSignUp);
                    },
                    child: const Text(
                      '   Register',
                      style: TextStyle(
                        color: Color(0xffC7EDE6),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Future<void> loginUser() async {
  //   UserCredential user = await FirebaseAuth.instance
  //       .signInWithEmailAndPassword(email: email!, password: password!);
  // }
}
