// import 'package:family/src/data/auth_repository.dart';
// import 'package:family/src/data/database_repository.dart';
// import 'package:family/src/features/authentication/presentation/login_page.dart';
// import 'package:flutter/material.dart';

// class DeleteAccountPage extends StatelessWidget {
//   final DatabaseRepository databaseRepository;
//   final AuthRepository authRepository;

//   const DeleteAccountPage({
//     super.key,
//     required this.databaseRepository,
//     required this.authRepository,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Account löschen'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 'Möchten Sie wirklich Ihren Account löschen? Alle Daten werden entfernt und können nicht wiederhergestellt werden.',
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () async {
//                   try {
//                     await deleteAccount();
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => LoginPage(
//                           databaseRepository: databaseRepository,
//                           authRepository: authRepository,
//                         ),
//                       ),
//                     );
//                   } catch (e) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                         content: Text('Fehler beim Löschen des Accounts: $e'),
//                         backgroundColor: Colors.red,
//                       ),
//                     );
//                   }
//                 },
//                 style: ButtonStyle(
//                   backgroundColor: WidgetStateProperty.all<Color>(
//                     Colors.red,
//                   ),
//                   foregroundColor: WidgetStateProperty.all<Color>(
//                     Colors.white, // Schriftfarbe des Buttons
//                   ),
//                 ),
//                 child: const Text('Account löschen'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
