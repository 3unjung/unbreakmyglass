/*for (int i=0;i<6;i++)
      Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
        decoration: const BoxDecoration(
          color: blanc,
        ),
        child: const Carousel(imgFolderPath: "assets/img/verre_piscine/")
      ),*/

// Container(
//   child: Container(
//     padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
//     margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
//     color: Colors.white,
//     child: Column(
//       children: [
//         Container(
//           height: 25,
//           width: 1000,
//           color: umgBleu,
//           child: Center(
//               child: Text(
//             "Verre Piscine 50cl",
//             style: TextStyle(
//                 color: Colors.white, fontWeight: FontWeight.w900),
//           )),
//         ),
//         Carousel(imgFolderPath: "assets/img/verre_piscine/"),
//       ],
//     ),
//   ),
// ),
// Container(
//     // padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
//     // margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
//     decoration: const BoxDecoration(
//       color: Colors.white,
//     ),
//     child: Column(
//       children: [
//         Container(
//           color: umgBleu,
//           // height: 15,
//           // width: 1000,
//           child: const Center(child: Text("Verre Piscine 50cl", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 15),)),
//         ),
//         Container(
//           padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
//           margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
//
//           child: Carousel(
//               imgFolderPath: "assets/img/verre_piscine/"),
//         ),
//       ],
//     ),
// ),



/*  NEW */
// Container(
//   padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
//   margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 4),
//   decoration: const BoxDecoration(
//     color: Colors.white,
//   ),
//   child: Column(
//     children: [
//       Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           // Glasses badge
//            Container(
//             padding: const EdgeInsets.all(5),
//             decoration: BoxDecoration(
//               color: umgBleu,
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: const Text(
//               "26cl",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500),
//             ),
//           ),
//         ],
//       ),
//       // Glass
//       InkWell(
//         onTap: () {},
//         child: Container(
//           margin: const EdgeInsets.all(10),
//           child: Carousel(imgFolderPath: 'asset/img/verre_piscine',),
//         ),
//       ),
//
//       // Title and icons
//       Wrap(
//         children: [
//           Row(
//               children: [
//               Icon(Icons.arrow_left_sharp,color: umgBleu, size: 25,),
//                 Text("Verre Piscine"),
//                 Icon(Icons.arrow_right_sharp, color: umgBleu, size: 25,)
//               ]
//
//           )
//         ],
//       ),
//
//     ],
//   ),
// ),
