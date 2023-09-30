import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  /*var photos =[ "img":"https://picsum.photos/id/40/200/200?grayscale", "title": "Photo1",
    "img":"https://picsum.photos/id/40/200/200?grayscale", "title": "Photo2",
    "img":"https://picsum.photos/id/40/200/200?grayscale", "title": "Photo3",
    "img":"https://picsum.photos/id/40/200/200?grayscale", "title": "Photo4",
    "img":"https://picsum.photos/id/40/200/200?grayscale", "title": "Photo5",

  ];*/

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Photo Gallery'),
       centerTitle: true,
     ),
     body: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Container(
             alignment: Alignment.center,
             padding: EdgeInsets.all(8),

             child: Text('Welcome To My Photo Gallery!', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.red)),


           ),
           Padding(
               padding: EdgeInsets.all(16.0),
             child: TextField(
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.search),
                 hintText: 'Search',
                 border: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.red),


                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.red)
                 )
               ),
             ),
           ),

           Wrap(

             direction: Axis.horizontal,
             spacing: 29,
             runSpacing: 20,


             children: [
               ElevatedButton(
                   style: ElevatedButton.styleFrom(
                       elevation: 0,
                       padding: EdgeInsets.zero,
                       fixedSize: Size.square(100)

                   ),
                   onPressed: () {
                     ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(
                         content: Text('Clicked on photo!'),
                         backgroundColor: Colors.red.shade400,
                         // duration: Duration(microseconds: 1000),
                       ),
                     );
                   },
                   child: Stack(
                     children: [
                       Image.network('https://picsum.photos/id/30/200/200?grayscale'),
                       Positioned(
                           bottom: 0,
                           right: 30,
                           child: Container(
                               color: Colors.red.shade200,
                               child: Text('Photo1', style: TextStyle(color: Colors.black),)))
                     ],
                   )
               ),
               ElevatedButton(
                   style: ElevatedButton.styleFrom(
                       elevation: 0,
                       padding: EdgeInsets.zero,
                       fixedSize: Size.square(100)

                   ),
                   onPressed: () {
                     ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(
                         content: Text('Clicked on photo!'),
                         backgroundColor: Colors.red.shade400,
                         duration: Duration(microseconds: 1000),
                       ),
                     );
                   },
                   child: Stack(
                     children: [
                       Image.network('https://picsum.photos/id/31/200/200?grayscale'),
                       Positioned(
                           bottom: 0,
                           right: 30,
                           child: Container(
                               color: Colors.red.shade200,
                               child: Text('Photo2', style: TextStyle(color: Colors.black),)))
                     ],
                   )
               ),
               ElevatedButton(
                   style: ElevatedButton.styleFrom(
                       elevation: 0,
                       padding: EdgeInsets.zero,
                       fixedSize: Size.square(100)

                   ),
                   onPressed: () {
                     ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(
                         content: Text('Clicked on photo!'),
                         backgroundColor: Colors.red.shade400,
                         duration: Duration(microseconds: 1000),
                       ),
                     );
                   },
                   child: Stack(
                     children: [
                       Image.network('https://picsum.photos/id/32/200/200?grayscale'),
                       Positioned(
                           bottom: 0,
                           right: 30,
                           child: Container(
                               color: Colors.red.shade200,
                               child: Text('Photo3', style: TextStyle(color: Colors.black),)))
                     ],
                   )
               ),


               ElevatedButton(
                 style: ElevatedButton.styleFrom(
                     elevation: 0,
                     padding: EdgeInsets.zero,
                     fixedSize: Size.square(100)

                 ),
                 onPressed: () {
                   ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(
                       content: Text('Clicked on photo!'),
                       backgroundColor: Colors.red.shade400,
                       duration: Duration(microseconds: 1000),
                     ),
                   );
                 },
                 child: Stack(
                   children: [
                     Image.network('https://picsum.photos/id/34/200/200?grayscale'),
                     Positioned(
                       bottom: 0,
                         right: 30,
                         child: Container(
                             color: Colors.red.shade200,
                             child: Text('Photo4', style: TextStyle(color: Colors.black),)))
                   ],
                 )
               ),
               ElevatedButton(
                   style: ElevatedButton.styleFrom(
                       elevation: 0,
                       padding: EdgeInsets.zero,
                       fixedSize: Size.square(100)

                   ),
                   onPressed: () {
                     ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(
                         content: Text('Clicked on photo!'),
                         backgroundColor: Colors.red.shade400,
                         duration: Duration(microseconds: 1000),
                       ),
                     );
                   },
                   child: Stack(
                     children: [
                       Image.network('https://picsum.photos/id/35/200/200?grayscale'),
                       Positioned(
                           bottom: 0,
                           right: 30,
                           child: Container(
                               color: Colors.red.shade200,
                               child: Text('Photo5', style: TextStyle(color: Colors.black),)))
                     ],
                   )
               ),
               ElevatedButton(
                   style: ElevatedButton.styleFrom(
                       elevation: 0,
                       padding: EdgeInsets.zero,
                       fixedSize: Size.square(100)

                   ),
                   onPressed: () {
                     ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(
                         content: Text('Clicked on photo!'),
                         backgroundColor: Colors.red.shade400,
                         duration: Duration(microseconds: 1000),
                       ),
                     );
                   },
                   child: Stack(
                     children: [
                       Image.network('https://picsum.photos/id/36/200/200?grayscale'),
                       Positioned(
                           bottom: 0,
                           right: 30,
                           child: Container(
                               color: Colors.red.shade200,
                               child: Text('Photo6', style: TextStyle(color: Colors.black),)))
                     ],
                   )
               ),
               ElevatedButton(
                   style: ElevatedButton.styleFrom(
                       elevation: 0,
                       padding: EdgeInsets.zero,
                       fixedSize: Size.square(100)

                   ),
                   onPressed: () {
                     ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(
                         content: Text('Clicked on photo!'),
                         backgroundColor: Colors.red.shade400,
                         duration: Duration(microseconds: 1000),
                       ),
                     );
                   },
                   child: Stack(
                     children: [
                       Image.network('https://picsum.photos/id/37/200/200?grayscale'),
                       Positioned(
                           bottom: 0,
                           right: 30,
                           child: Container(
                               color: Colors.red.shade200,
                               child: Text('Photo7', style: TextStyle(color: Colors.black),)))
                     ],
                   )
               ),
               ElevatedButton(
                   style: ElevatedButton.styleFrom(
                       elevation: 0,
                       padding: EdgeInsets.zero,
                       fixedSize: Size.square(100)

                   ),
                   onPressed: () {
                     ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(
                         content: Text('Clicked on photo!'),
                         backgroundColor: Colors.red.shade400,
                         duration: Duration(microseconds: 1000),
                       ),
                     );
                   },
                   child: Stack(
                     children: [
                       Image.network('https://picsum.photos/id/38/200/200?grayscale'),
                       Positioned(
                           bottom: 0,
                           right: 30,
                           child: Container(
                               color: Colors.red.shade200,
                               child: Text('Photo8', style: TextStyle(color: Colors.black),)))
                     ],
                   )
               ),
               ElevatedButton(
                   style: ElevatedButton.styleFrom(
                       elevation: 0,
                       padding: EdgeInsets.zero,
                       fixedSize: Size.square(100)

                   ),
                   onPressed: () {
                     ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(
                         content: Text('Clicked on photo!'),
                         backgroundColor: Colors.red.shade400,
                         duration: Duration(microseconds: 1000),
                       ),
                     );
                   },
                   child: Stack(
                     children: [
                       Image.network('https://picsum.photos/id/39/200/200?grayscale'),
                       Positioned(
                           bottom: 0,
                           right: 30,
                           child: Container(
                               color: Colors.red.shade200,
                               child: Text('Photo9', style: TextStyle(color: Colors.black),)))
                     ],
                   )
               ),



             ],

           ),

           ListView.builder(
               primary: false,
               shrinkWrap: true,
               itemCount: 6,
               itemBuilder:(context, index){
                 return ListTile(
                   contentPadding: EdgeInsets.only(left: 16, right: 16, top: 8),
                   leading: Image(image: NetworkImage('https://picsum.photos/id/${index+10}/200/200?grayscale'),),
                   title: Text('Sample Photo ${index+1}'),
                   subtitle: Text('Category ${index+1}'),

                 );
               }
           ),

         ],

       ),
     ),
     floatingActionButton:  FloatingActionButton(
       backgroundColor: Colors.redAccent,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
         child: Icon(Icons.cloud_upload_outlined),
         onPressed: () {
           ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(
                 content: Text('Photo Uploaded Successfully!'),
                 backgroundColor: Colors.red.shade400,
                 // duration: Duration(microseconds: 3000),
               )
           );
         }
     ),
   );
  }

}