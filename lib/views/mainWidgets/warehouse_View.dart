import 'package:flutter/material.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/model/category/category_list_model.dart';
import 'package:mym/model/category/category_model.dart';
import 'package:mym/services/category/category_services.dart';

List KindsList = ["عصائر", "معلبات", "موالح", "بقوليات", "شيبس", "منظفات"];

int kinds = 0;
//هون بدنا نعالج القصة انو يستقبل الصورة من المستخدم ويعملها استدعاء للدالة ممن عندو
// List<Widget> kindsInWareHouse = [
//   warehouseCard(KindsList[0]),
//   warehouseCard(KindsList[1]),
//   warehouseCard(KindsList[2]),
//   warehouseCard(KindsList[3]),
//   warehouseCard(KindsList[4]),
//   warehouseCard(KindsList[5]),
// ];

// class WarehouseView extends StatelessWidget {
//   const WarehouseView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     kinds++;
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: SizedBox(
//           // height: MediaQuery.of(context).size.height * 0.99,
//           child: Column(
//             children: [
//               ClipRRect(
//                 borderRadius: const BorderRadius.only(
//                     bottomLeft: Radius.circular(50),
//                     bottomRight: Radius.circular(50)),
//                 child: Container(
//                   width: double.infinity,
//                   height: 120,
//                   color: maincolor,
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             alignment: Alignment.topLeft,
//                             margin: const EdgeInsets.only(
//                                 top: 10, bottom: 18, left: 40),
//                             child: const Text(
//                               'المستودع',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 22,
//                                   fontFamily: 'main'),
//                             ),
//                           ),
//                           Container(
//                             margin: const EdgeInsets.only(
//                                 top: 8, bottom: 18, right: 20),
//                             alignment: Alignment.topRight,
//                             child: IconButton(
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                               icon: const Icon(
//                                 Icons.arrow_forward,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Center(
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 SizedBox(
//                                   width: MediaQuery.of(context).size.width / 3,
//                                 ),
//                                 Center(
//                                     child: Container(
//                                   alignment: Alignment.centerRight,
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.5,
//                                   height: 30,
//                                   child: Text(
//                                     ' عدد الأصناف : ${KindsList.length.toString()} ',
//                                     style: const TextStyle(
//                                         color: Colors.white,
//                                         fontFamily: 'main'),
//                                   ),
//                                 )),
//                               ],
//                             ),
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.70,
//                 child: ListView(
//                   // shrinkWrap: true,
//                   // scrollDirection: ,
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.only(bottom: 12),
//                       child: ListView.builder(
//                         itemCount: KindsList.length,
//                         itemBuilder: (context, index) {
//                           return WareHouseCard(
//                             categoryName: KindsList[index],
//                           );
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class WareHouseCard extends StatelessWidget {
//   const WareHouseCard({
//     super.key,
//     required this.categoryName,
//   });
//   final String categoryName;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: double.infinity,
//         height: 109,
//         margin: const EdgeInsets.all(18),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(25),
//           color: cardColor,
//           border: Border.all(color: Colors.black, width: 2),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.5),
//               spreadRadius: 2,
//               blurRadius: 5,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Center(
//           child: Text(
//             categoryName,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               fontFamily: 'main',
//               fontSize: 33,
//               color: Colors.black,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class WarehouseView extends StatelessWidget {
  const WarehouseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: CategoryServicesImp().getAllCategory(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            CatrgoriesList cl = snapshot.data!;
            return ListView.builder(
              itemCount: cl.categories.length,
              itemBuilder: (context, index) {
                Category category = cl.categories[index];
                return ListTile(
                  title: Text(category.categoryName),
                );
              },
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const Text("have a problem");
          }
        },
      ),
    );
  }
}
