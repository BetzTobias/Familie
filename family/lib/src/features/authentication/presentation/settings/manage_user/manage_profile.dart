// import 'package:family/src/common/primary_button.dart';
// import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_user_email/manage_profile_email.dart';
// import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_user_name/manage_profile_user.dart';
// import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_user_number/manage_profile_number.dart';
// import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_user_password/manage_profile_password.dart';
// import 'package:family/src/features/authentication/presentation/settings/manage_user/profil_user/user_profil.dart';
// import 'package:family/src/features/content/presentation/background_page.dart';
// import 'package:family/src/features/content/presentation/menu_template_page.dart';
// import 'package:flutter/material.dart';

// class ManageProfilePage extends StatelessWidget {
//   const ManageProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BackgroundPage(
//       child: MenuTemplatePage(
//         content: [
//           const SizedBox(height: 10),
//           PrimaryButton(context, 'Benutzername ändern', () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const ManageProfileUserPage(),
//               ),
//             );
//           }),
//           const SizedBox(height: 10),
//           PrimaryButton(context, 'Telefonnummer ändern', () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const ManageProfileNumberPage(),
//               ),
//             );
//           }),
//           const SizedBox(height: 10),
//           PrimaryButton(context, 'E-Mail Adresse ändern', () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const ManageProfileEmailPage(),
//               ),
//             );
//           }),
//           const SizedBox(height: 10),
//           PrimaryButton(context, 'Passwort ändern', () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const ManageProfilePasswordPage(),
//               ),
//             );
//           }),
//           const SizedBox(height: 10),
//           PrimaryButton(context, 'User Profil', () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => UserProfileScreen(),
//               ),
//             );
//           }),
//         ],
//       ),
//     );
//   }
// }
