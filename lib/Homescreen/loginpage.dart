import 'package:flutter/material.dart';
import 'package:furnitureex/custom_widget/custom_textfiled.dart';
import 'package:furnitureex/provider/Furniture_Provider.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 756,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZnVybml0dXJlfGVufDB8fDB8fHww'),
                        fit: BoxFit.fill)),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 15, right: 15),
                          child: CustomTextfield(
                            text1: 'Email',
                            text2: 'Email',
                            icon: const Icon(Icons.email_outlined),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: CustomTextfield(
                              text1: 'Password',
                              text2: 'Password',
                              icon: const Icon(Icons.password)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.white.withOpacity(0.4)),
                              onPressed: () {
                                context
                                    .read<FurnitureProvider>()
                                    .loginProvider(context);
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: 'popins'),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
