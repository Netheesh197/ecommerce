// import 'package:ecommerce/utils/color_constants.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.all(32),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               "Welcome\nBack!",
//               style: GoogleFonts.montserrat(
//                   fontSize: 36, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 36,
//             ),
//             TextFormField(
//               decoration: InputDecoration(
//                   filled: true,
//                   fillColor: ColorConstants.TEXTFIELDCOLOR,
//                   labelText: "Username or Email",
//                   labelStyle: GoogleFonts.montserrat(
//                       fontSize: 12, fontWeight: FontWeight.w500),
//                   prefixIcon: Icon(
//                     Icons.person,
//                     size: 24,
//                     color: ColorConstants.PREFIXICON1,
//                   ),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10))),
//             ),
//             SizedBox(
//               height: 76,
//             ),
//             ElevatedButton(
//                 onPressed: () {},
//                 style: ButtonStyle(
//                     fixedSize: WidgetStatePropertyAll(Size(317, 55)),
//                     backgroundColor: WidgetStatePropertyAll(
//                       ColorConstants.PRIMARY,
//                     ),
//                     shape: WidgetStatePropertyAll(RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(4)))),
//                 child: Text(
//                   "Login",
//                   style: GoogleFonts.montserrat(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w600,
//                     color: ColorConstants.LOGINCOLOR,
//                   ),
//                 )),
//             SizedBox(
//               height: 75,
//             ),
//             Text(
//               "- OR Continue with -",
//               textAlign: TextAlign.center,
//               style: GoogleFonts.montserrat(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w600,
//                   color: ColorConstants.ORCOLOR),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//              CircleAvatar(
//               radius: 30,
//               backgroundColor: const Color.fromARGB(255, 246, 218, 222),
//               child: IconButton(onPressed: () {},
//               icon: Image.asset("assets/images/googlelogo.png")),
//             ),
//             SizedBox(height: 26,),
//              Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Create An Account:",
//                 style: GoogleFonts.montserrat(
//                   fontSize: 14,
//                   color: ColorConstants.ORCOLOR,
//                   fontWeight: FontWeight.w400
//                 ),
//                 ),
//                 InkWell(
//                   onTap: () {

//                   },
//                   child: Text("Sign Up",
//                   style: GoogleFonts.montserrat(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w600,
//                     color: ColorConstants.PRIMARY),),
//                 )
//               ],
//              )
//           ],
//         ),
//       ),
//     ));
//   }
// }

import 'package:ecommerce/utils/color_constants.dart';
import 'package:ecommerce/view/forgot_password_screen/forgotpassword.dart';
import 'package:ecommerce/view/get_started_screen/get_started_screen.dart';
import 'package:ecommerce/view/globalwidgets/custom_inpot_logos.dart';
import 'package:ecommerce/view/globalwidgets/custom_input_filed.dart';
import 'package:ecommerce/view/globalwidgets/custom_input_login.dart';
import 'package:ecommerce/view/signup_screen/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 42),
          child: Column(
            children: [
              Text("Welcome Back!",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: ColorConstants.BLACK,
                  )),
              SizedBox(
                height: 36,
              ),
              CustomInputTextfield(
                hinttext: "Username or Email",
                prefixIcon: Icons.person,
              ),
              SizedBox(
                height: 31,
              ),
              CustomInputTextfield(
                hinttext: "Password",
                prefixIcon: Icons.lock,
                suffixIcon: Icons.visibility,
              ),
              SizedBox(
                height: 9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(
                          builder: (context) => Forgotpassword(),));
                    },
                    child: Text("forgot password?",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.PRIMARY
                    ),),
                  ),
                ],
              ),
              SizedBox(
                height: 52,
              ),
              CustomInputLogin(text: 'Login',
              onButtonPressed: () {
                Navigator.pushAndRemoveUntil(
                  context, MaterialPageRoute(
                    builder: (context) => 
                    GetStartedScreen(),
                    ),
                    (route) => false,);
              },
              ),
              SizedBox(height: 75,),
              Text("- OR Continue with -",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: ColorConstants.ORCOLOR
              ),),
              SizedBox(height: 20,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomInputLogos(
                    image: "assets/images/googlelogo.png",
                  ),
                  SizedBox(width: 10,),
                  CustomInputLogos(
                  image: "assets/images/apple 1.png",
                  ),
                  SizedBox(width: 10,),
                  CustomInputLogos(
                    image: "assets/images/facebooklogo.png",
                  )
                ],
               ),
               SizedBox(height: 28,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Create An Account",
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.ORCOLOR
                    ),),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context, MaterialPageRoute(
                            builder: (context) => Signup(),));
                      },
                      child: Text("Sign UP",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.PRIMARY
                      ),),
                    ),
                  ],
                )
             ],
          ),
        ),
      ),
    );
  }
}

