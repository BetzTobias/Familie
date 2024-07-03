// import 'package:family/src/data/auth_repository.dart';
// import 'package:family/src/data/database_repository.dart';
// import 'package:family/src/features/content/presentation/background_page.dart';
// import 'package:family/src/features/content/presentation/entertainment/bake/american_recipe.dart';
// import 'package:family/src/features/content/presentation/entertainment/entertainment.dart';
// import 'package:flutter/material.dart';

// class RecipeList extends StatelessWidget {
//   final DatabaseRepository databaseRepository;
//   final AuthRepository authRepository;
//   const RecipeList({
//     super.key,
//     required this.authRepository,
//     required this.databaseRepository,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BackgroundPage(
//       child: Stack(
//         children: [
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const SizedBox(height: 50),
//                   buildAllSongButton(context, 'Amerikaner', () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => AmericanRecipe(
//                           databaseRepository: databaseRepository,
//                           authRepository: authRepository,
//                         ),
//                       ),
//                     );
//                   }),
//                   const SizedBox(height: 10),
//                   buildAllSongButton(context, 'Cookies mit Smarties', () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => CookiesRecipe(
//                           databaseRepository: databaseRepository,
//                           authRepository: authRepository,
//                         ),
//                       ),
//                     );
//                   }),
//                   const SizedBox(height: 10),
//                   buildAllSongButton(context, 'Regenbogenkuchen', () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => RainbowCakeRecipe(
//                           databaseRepository: databaseRepository,
//                           authRepository: authRepository,
//                         ),
//                       ),
//                     );
//                   }),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 60,
//             right: 20,
//             child: SizedBox(
//               height: 50,
//               width: 100,
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => EntertainmentPage(
//                         databaseRepository: databaseRepository,
//                         authRepository: authRepository,
//                       ),
//                     ),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0XFF16972A),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 child: const Text(
//                   'Zurück',
//                   style: TextStyle(fontSize: 14),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
