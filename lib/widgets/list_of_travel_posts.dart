import 'package:flutter/material.dart';

import '../models/user_data.dart';
import 'travel_item_card.dart';

// class ListOfTopDoctors extends StatelessWidget {
//   const ListOfTopDoctors({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: topDoctors.length,
//       itemBuilder: (context, index) {
//         return GestureDetector(
//           onTap: () {
//             Navigator.of(context).pushNamed('/doctor_details',
//                 arguments: Doctor(
//                   topDoctorName: topDoctors[index].topDoctorName,
//                   topDoctorDescription: topDoctors[index].topDoctorDescription,
//                   topDoctorHospital: topDoctors[index].topDoctorHospital,
//                   isDoctorOpen: topDoctors[index].isDoctorOpen,
//                   topDoctorNumberOfPatient:
//                       topDoctors[index].topDoctorNumberOfPatient,
//                   topDoctorPicture: topDoctors[index].topDoctorPicture,
//                   topDoctorRating: topDoctors[index].topDoctorRating,
//                   topDoctorSpecialty: topDoctors[index].topDoctorSpecialty,
//                   topDoctorYearOfExperience:
//                       topDoctors[index].topDoctorYearOfExperience,
//                 ));
//           },
//           child: TopDoctorsCard(
//             doctor: topDoctors[index],
//           ),
//         );
//       },
//     );
//   }
// }
class ListOfTravelItems extends StatelessWidget {
  const ListOfTravelItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 304,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return TravelItemCard(
            user: topUsers[index],
          );
        },
      ),
    );
  }
}
