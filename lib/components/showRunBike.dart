import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/components/bike.dart';

class  ShowBikeRun extends StatelessWidget {

 final List<Bike> bikeList;

 ShowBikeRun(this.bikeList);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  ListView.builder(

        itemCount: bikeList.length,
        itemBuilder: (ctx, index)
        {

          final e = bikeList[index];

          return Column(
            children:<Widget> [


              Container(
                width: size.width,
                height: 200,
                color: Colors.teal,
                child: Image.asset('assets/images/Bike-10.png'),
              ),

              Container(
                  width:double.infinity,


                child: Row(

                  children: <Widget>[
                    Container(
                        width:size.width * 0.50 ,
                        height: 50,

                        child:Card(
                          elevation: 5,
                          child: Icon(
                              Icons.call,
                              color: Colors.green

                          ),
                        )
                    ),

                    Container(
                          width:size.width * 0.50,
                        height: 50,
                        child:Card(
                          elevation: 5,
                          child: Icon(
                              Icons.email,
                              color: Colors.green

                          ),
                        )
                    ),
                  ],
                ),

              )

            ],
          );
        }
      );


  }
}
