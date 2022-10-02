import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tugas2_buatlatihankuis/data_tempat.dart';

class Detailpage extends StatelessWidget {
  final TourismPlace lokasi;
  const Detailpage({Key? key, required this.lokasi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .6,
              width: 3000,
              child: Image.network(lokasi.imageUrls[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20,
                  child: Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                    ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "DETAIL",
                  style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),
                  
                ),
              ),
              ),
            Padding(
              padding: EdgeInsets.only(top:415),
              child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          lokasi.name,
                          style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\Harga Tiket :   " + lokasi.ticketPrice.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15
                              ),
                              
                        )],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children : [
                      Icon(Icons.location_on_outlined),
                      Row(
                        children: [
                          Text(" Lokasi       :  " + lokasi.location.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w200, fontSize: 15
                          ),
                        ),
                        ],
                      )
                    ]
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children : [
                      Icon(Icons.calendar_month),
                      Row(
                        children: [
                          Text(" Hari Buka  :  " + lokasi.openDays.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w200, fontSize: 15
                          ),
                        ),
                        ],
                      )
                    ]
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children : [
                      Icon(Icons.timelapse),
                      Row(
                        children: [
                          Text(" Jam Buka  :  " + lokasi.openTime.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w200, fontSize: 15
                          ),
                        ),
                        ],
                      )
                    ]
                  ),
                  SizedBox(height: 15,),
                  Text(
                    "Deskripsi",
                    style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17
                      ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "Deskripsi" + lokasi.description.toString(),
                    style: TextStyle(
                          fontWeight: FontWeight.w100, fontSize: 14
                      ),
                  ),
                  
                ],
              ),
            ),
            )
            
          ],
        ),
      ),
    );
  }
}