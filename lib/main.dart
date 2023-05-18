import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/** Use of container decoration*/
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue.shade50,
          child: Center(
            child: Container(
              width: 100,
              height: 100,
              //color: Colors.grey,
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
                //todo(use border radius multiple type)
                //borderRadius: BorderRadius.only(topLeft: Radius.elliptical(15, 30), bottomRight: Radius.elliptical(30, 15)),//BorderRadius.only(topLeft: Radius.circular(8)) //BorderRadius.all(Radius.circular(8)) //BorderRadius.circular(8),
                border: Border.all(width: 2, color: Colors.green),
                boxShadow: [BoxShadow(
                  blurRadius: 8,
                  //spreadRadius: 8,
                  color: Colors.green.shade50
                )
                ],
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
    );
  }
}

/** Example list view*/
/*class _MyHomePageState extends State<MyHomePage> {
  var arrNames = [
    'suman',
    'shantanu',
    'sourav',
    'vikash',
    'gourab',
    'sharan',
    'goranga'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      //todo(add listview separate)
      // body: ListView.separated(
      //   itemBuilder: (context, index) {
      //     return Text(
      //       arrNames[index],
      //       style: TextStyle(
      //           color: Colors.redAccent,
      //           fontWeight: FontWeight.w400,
      //           fontSize: 20),
      //     );
      //   },
      //   itemCount: arrNames.length,
      //   separatorBuilder: (BuildContext context, int index) {
      //     return Divider(height: 100, thickness: 0.5,);
      //   },
      // ),

      //todo(listview builder dynamic list)
      // body: ListView.builder(itemBuilder: (context, index) {
      //   return Text(arrNames[index], style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w400, fontSize: 20),);
      // },
      //   itemCount: arrNames.length,
      //   //itemExtent: 100,
      //   //scrollDirection: Axis.horizontal,
      // ),

      //todo(static listview)
      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   reverse: true,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('One', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w400, fontSize: 20)),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('Two', style: TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.w400, fontSize: 20)),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('Three', style: TextStyle(color: Colors.yellowAccent, fontWeight: FontWeight.w400, fontSize: 20)),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('Four', style: TextStyle(color: Colors.purpleAccent, fontWeight: FontWeight.w400, fontSize: 20)),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('Five', style: TextStyle(color: Colors.cyanAccent, fontWeight: FontWeight.w400, fontSize: 20)),
      //     )
      //   ],
      // ),
    );
  }
}*/

/** Example column & row with vertically and horizontally scroll*/
/*class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          padding: EdgeInsets.all(4),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 160,
                        width: 160,
                        color: Colors.cyan,
                        margin: EdgeInsets.only(bottom: 4, right: 4),
                      ),
                      Container(
                        height: 160,
                        width: 160,
                        color: Colors.orange,
                        margin: EdgeInsets.only(bottom: 4, right: 4),
                      ),
                      Container(
                        height: 160,
                        width: 160,
                        color: Colors.blueGrey,
                        margin: EdgeInsets.only(bottom: 4, right: 4),
                      ),
                      Container(
                        height: 160,
                        width: 160,
                        color: Colors.brown,
                        margin: EdgeInsets.only(bottom: 4, right: 4),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 160,
                  color: Colors.green,
                  margin: EdgeInsets.only(bottom: 4),
                ),
                Container(
                  height: 160,
                  color: Colors.red,
                  margin: EdgeInsets.only(bottom: 4),
                ),
                Container(
                  height: 160,
                  color: Colors.yellow,
                  margin: EdgeInsets.only(bottom: 4),
                ),
                Container(
                  height: 160,
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ),
    );
  }
}*/

/** Example column & row*/
/*class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
    //todo(use row and column together)
    //     body: Container(
    //     height: 300,
    //     color: Colors.brown,
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         Text('S', style: TextStyle(color: Colors.redAccent, fontSize: 24,),),
    //         Text('U', style: TextStyle(color: Colors.greenAccent, fontSize: 24)),
    //         Column(
    //           mainAxisAlignment:MainAxisAlignment.center,
    //           crossAxisAlignment:CrossAxisAlignment.center,
    //           children: [
    //             ElevatedButton(onPressed: () {
    //               print('click button 1');
    //             }, child: Text('Button 1'),),
    //             ElevatedButton(onPressed: () {
    //               print('click button 2');
    //             }, child: Text('Button 2'),)
    //           ],
    //         ),
    //         Text('M', style: TextStyle(color: Colors.cyanAccent, fontSize: 24)),
    //         Text('A', style: TextStyle(color: Colors.purpleAccent, fontSize: 24)),
    //         Text('N', style: TextStyle(color: Colors.yellowAccent, fontSize: 24))
    //       ],
    //     ),
    //   ),

      //todo(uses column)
      //  body: Column(
      //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly, //given all widget even space
      //     // mainAxisAlignment: MainAxisAlignment.spaceAround, //given all widget only top and bottom half space and other all even space
      //     // mainAxisAlignment: MainAxisAlignment.spaceBetween, //top and bottom widget no space and other widget space evenly
      //     mainAxisAlignment: MainAxisAlignment.center, //all widget center and you uses end top etc other property
      //       children: [
      //       Text('S', style: TextStyle(color: Colors.redAccent, fontSize: 16),),
      //       Text('U', style: TextStyle(color: Colors.greenAccent, fontSize: 16)),
      //       Text('M', style: TextStyle(color: Colors.cyanAccent, fontSize: 16)),
      //       Text('A', style: TextStyle(color: Colors.purpleAccent, fontSize: 16)),
      //       Text('N', style: TextStyle(color: Colors.yellowAccent, fontSize: 16)),
      //     ],
      //   )

      //todo(uses row)
      // body: Row(
      //   children: [
      //     Text('S', style: TextStyle(color: Colors.redAccent, fontSize: 16),),
      //     Text('U', style: TextStyle(color: Colors.greenAccent, fontSize: 16)),
      //     Text('M', style: TextStyle(color: Colors.cyanAccent, fontSize: 16)),
      //     Text('A', style: TextStyle(color: Colors.purpleAccent, fontSize: 16)),
      //     Text('N', style: TextStyle(color: Colors.yellowAccent, fontSize: 16))
      //   ],
      // )
    );
  }
}*/

/** Example set images*/
/*class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(child: Container(width:100,height:100,child: Image.asset('assets/images/pang.png'))));
  }
}*/

/** Example button & inkwell(click on any container or object) click functionality */
/*class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      //todo(click any widget then call `inkwell`)
      // body: Center(
      //     child: InkWell(
      //   onTap: () {
      //     print('click container only tap');
      //   },
      //   onDoubleTap: () {
      //     print('click container double tap');
      //   },
      //   child: Container(
      //     height: 200,
      //     width: 200,
      //     color: Colors.yellow,
      //     //alignment: Alignment.center,
      //     child: Center(
      //       child: InkWell(
      //         onTap: () {
      //           print('click on text');
      //         },
      //         child: Text(
      //           'Example \nInkwell',
      //           style: TextStyle(
      //               fontWeight: FontWeight.bold, color: Colors.green),
      //         ),
      //       ),
      //     ),
      //   ),
      // )),

      //todo(elevated button)
      // body: ElevatedButton(
      //   onPressed: () {
      //     print('Click elevated button');
      //   },
      //   child: Text('Click Me'),
      // )

      //todo(text button)
      // body: TextButton(onPressed: () {
      // print('Click text button');
      // },
      // child: Text('Click me'),
      // )
    );
  }
}*/

/** Example add container & text with multiple textstyle*/
/*class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.lightBlue,
          child: Center(child: Text('Suman khan',style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w800, backgroundColor: Colors.black26),textAlign: TextAlign.center,))
        ),
      ),
    );
  }
}*/
