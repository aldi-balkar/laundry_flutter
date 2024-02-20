import 'package:d_input/d_input.dart';
import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry/config/app_assets.dart';
import 'package:laundry/config/app_colors.dart';
import 'package:laundry/config/app_constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  final editUsername = TextEditingController();
  final editEmail = TextEditingController();
  final editPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppAssets.bgAuth,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black54,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                    Text(
                      AppConstants.appName,
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        color: Colors.green[900],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: 5,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: Material(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(10),
                              child: const Icon(
                                Icons.person,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          DView.spaceWidth(10),
                          Expanded(
                            child: DInput(
                              controller: editUsername,
                              fillColor: Colors.white70,
                              hint: 'Username',
                              radius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
