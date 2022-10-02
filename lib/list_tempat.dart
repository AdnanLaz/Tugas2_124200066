import 'package:flutter/material.dart';
import 'package:tugas2_buatlatihankuis/detail_page.dart';
import 'data_tempat.dart';

class Listtempat extends StatefulWidget {
  const Listtempat({Key? key}) : super(key: key);

  @override
  _ListtempatState createState() => _ListtempatState();
}

class _ListtempatState extends State<Listtempat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Wisata"),
        backgroundColor: Colors.green[300],
      ),
      body: ListView.builder(itemBuilder: (context,index){
        final TourismPlace travel = tourismPlaceList[index];
        return Card(
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Detailpage(lokasi: travel);
              }));
            },
          child: Column(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(travel.imageAsset),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  travel.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                Text(
                  travel.ticketPrice,
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            )],
            
          ),
        ));
      }
      ));
}

}