import 'dart:math';

import 'package:flutter/material.dart';
import 'package:messengerdesign/bmi_result_+screen.dart';








class BimScreen extends StatefulWidget{
  @override
   
  State<StatefulWidget> createState() {
     return _BimScreenState();
  }

 

}

class _BimScreenState extends State<BimScreen>{

  int weight = 0;
  Color color = Color.fromARGB(255, 2, 20, 35);
  int age =0;
  bool ismale = true ;
  double hight = 120.0 ;
  


  @override
  void initState() {
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 13, 23),

      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 1, 13, 23),
        elevation: 0.0,
        title: Center(child: Text(
          "BIM CALCULATOR",
          style: TextStyle(fontSize: 30),
        ),)

  
      ),
      body:
      
      
      Padding(padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: 
          Row(children: [
             Expanded(child: Container(
              decoration: BoxDecoration(
                  color: ismale ? Colors.blue :Color.fromARGB(255, 2, 20, 35),
                borderRadius: BorderRadius.circular(10)
              ),
             
              child: GestureDetector(
                 onTap: (){
                  setState(() {
                    ismale = true;
                  });
                 },
                child: Padding(padding: EdgeInsets.all(2),child: Column(
              children: [
                Expanded(child: Container(
                   width: double.infinity,
                  
                  
                  child: Column(children: [
                    Icon(Icons.male_outlined,
                      size: 100,
                      color: Colors.white,
                      
                      
                      
                      ),
                      Text("MALE",
                      
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                  ],)
                ))

              ],
            ),),
              )),),
             
            SizedBox(width: 20,),
           
            Expanded(child: Container(
              decoration: BoxDecoration(
               color:  ismale ? Color.fromARGB(255, 2, 20, 35) :Colors.blue,
                borderRadius: BorderRadius.circular(10)
              ),
              
              child: 
            GestureDetector(
              onTap: (){
                setState(() {
                    ismale = false;
                });   

              },
              child:  Padding(padding: EdgeInsets.all(2),child: Column(
              children: [
                  Expanded(child: Container(
                    width: double.infinity,
                  
                  child: Column(children: [
                    Icon(Icons.female_outlined,
                      size: 100,
                      color: Colors.white,
                      
                      
                      
                      ),
                      Text("FEMALE",
                      
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                  ],)
                ))

              ],
            ),),
          )),)

            

            
                
                 


          ],)),
          SizedBox(height: 20,),
          Expanded(
             flex: 2,
             child:
             Container(
              width: double.infinity,
            
              decoration: BoxDecoration(
               color: Color.fromARGB(255, 2, 20, 35),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(padding: EdgeInsets.all(10),
              child: Column(children: [
              Text(
                "HEIGHT",
                style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                      

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        
                        
                        children: [
                         Text(
                "${hight.round()}",
                style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w900,
                        color: Colors.white
                      ),),
                      Text(
                "cm",
                style: TextStyle(
                        fontSize: 10,
                        
                        color: Colors.white
                      ),),


                      ],),

                      Slider(
                        value: hight, 
                        min: 80,
                        max: 220,
                        onChanged: (value){
                          setState(() {
                            hight = value;
                          });

                        })

               


          ],),
              
              
              )
             
             ,)
             
              ),
              SizedBox(height: 20,),
          Expanded(
            flex: 2,
            
            child: Row(children: [
              Expanded(child: Container(
                decoration: BoxDecoration(
               color: Color.fromARGB(255, 2, 20, 35),
                borderRadius: BorderRadius.circular(10)
              ),
                child:Padding(padding: EdgeInsets.symmetric(
                  horizontal: 5,
                  
                ),child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Text("WEIGHT",
                    style: TextStyle(color: Colors.white,fontSize: 20,),
                    ),
                     Text(
                      "$weight",
                      style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      
                       
                       FloatingActionButton(onPressed: (){
                        setState(() {
                           weight--;
                        print (weight);
                       });
                       },
                       heroTag: "weight-",
                      backgroundColor:Colors.grey[600],
                      child: Text("-",
                      style: TextStyle(
                        fontSize: 30
                      ),
                      ),
                      
                      ),
                      SizedBox(width: 10,),
                      
                        
                       
                       Center(child: FloatingActionButton(onPressed: (){
                        setState(() {
                          weight++;
                        print (weight);
              
                        });
                       },
                       heroTag: "weight+",
                      backgroundColor:Colors.grey[600],
                      child: Text("+",
                      style: TextStyle(
                        fontSize: 30
                      ),
                      ),
                      
                      ),)
                    ],)
                    
                  ],) ,)
                ),),
                SizedBox(width: 20,),
                Expanded(child: Container(
                  decoration: BoxDecoration(
               color: Color.fromARGB(255, 2, 20, 35),
                borderRadius: BorderRadius.circular(10)
              ),
                child:Padding(padding: EdgeInsets.symmetric(
                  horizontal: 5,
                 
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("AGE",style: TextStyle(
                      
                      color: Colors.white,fontSize: 20,),),
                     Text(
                      "$age",
                      style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      
                       
                       FloatingActionButton(onPressed: (){
                         setState(() {
                           age--;
                        print (age);
                         });
                       },
                       
                       heroTag: "age-",
                      backgroundColor:Colors.grey[600],
                      
                      child: Text("-",
                      style: TextStyle(
                        fontSize: 30
                      ),
                      ),
                      
                      ),
                      SizedBox(width: 10,),
                      
                      
                       FloatingActionButton(onPressed: (){
                         setState(() {
                           age++;
                        print (age);
                         });
                       },
                       heroTag: "age+",
                      backgroundColor:Colors.grey[600],
                      child: Text("+",
                      style: TextStyle(
                        fontSize: 30
                      ),
                      ),
                      
                      ),
                    ],)
                  ],) ,)
                ),
),
         

          ],)),
          SizedBox(height: 20,),

           Container(
            width: double.infinity,
            color: Color.fromARGB(255, 226, 17, 170),
            child: MaterialButton(
              child: Text('CALCULATE',
              style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),
              ),
              onPressed: ()
            {
              var Result = weight / pow( hight /100 ,2);
              setState(() {
                print(Result.round());
                Navigator.push(
                  context , 
                  MaterialPageRoute(
                    builder: (context) => BmiResultScreen(Result: Result.round(), age: age, ismale: ismale,),
                    

                    ));
                    
              });

            },
           ),
           )
        ],
      ),)

    );
  }


} 