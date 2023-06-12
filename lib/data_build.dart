import 'package:flutter/material.dart';
import 'package:maya/data_service/vendor_service.dart';

//This app will intruduce a new business model for
//The restaurang and Food supplies to delivery meal kit to customers.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
//This app will intruduce a new business model for
//The restaurang and Food supplies to delivery meal kit to customers.

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  VendorService vendorService = VendorService();
  late List<Vendor> vendors;
  //add vinitState

  @override
  void initState() {
    //vendors=vendorService.getVendor().

    super.initState();
  }

  //
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        leading: Icon(Icons.menu),
        actions: [
          InkWell(
            onTap: () {},
            child: Icon(Icons.shopping_bag_outlined),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text(
                "Sign in",
                style: TextStyle(),
              ),
            ),
          ),
        ],
      ),

//The customers will see all the list of meal kit from Django Datebase
      body: SingleChildScrollView(
        child: Builder(builder: (context) {
          return Container(
            height: size.height,
            width: double.infinity,
            margin: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Let's try Meal Kit Of the week? !",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                Wrap(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      height: size.height * 0.20,
                      width: size.width * 0.30,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Text("Mealkit 01"),
                          Text("Size_kit"),
                          Text("price"),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(),
                            onPressed: () {},
                            child: Text(
                              "Add to Order",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      height: size.height * 0.20,
                      width: size.width * 0.30,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Text("Mealkit 01"),
                          Text("Size_kit"),
                          Text("price"),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(),
                            onPressed: () {},
                            child: Text(
                              "Add to Order",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    DefaultTabController(
                      length: 2,
                      initialIndex: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TabBar(
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.green,
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                              tabs: const [
                                // This tab will present all of suppliers list name
                                Tab(
                                  text: "Meal Kit Suppliers",
                                  icon: Icon(
                                    Icons.person,
                                    color: Colors.green,
                                  ),
                                ),
                                // This tab will
                                Tab(
                                  text: "Locations",
                                  icon: Icon(
                                    Icons.place,
                                    color: Colors.green,
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
