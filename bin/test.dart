import 'dart:convert';

import 'package:http/http.dart' as http;

main() async {
 //1 
 // print(await VendorService().getVendor());
//2
  //ListOfVendor listOfVendor = await VendorService().getVendor();
  //print(listOfVendor.vendors);

//3

  ListOfVendor listOfVendor = await VendorService().getVendor();
  print(listOfVendor.vendors[2].vendor_name);
}

//
class VendorService {
  Future<ListOfVendor> getVendor() async {
    var response = await http
        .get(Uri.parse("https://www.somtammarket.com/vendor/Vendors/"));

    return ListOfVendor.fromList(
      jsonDecode(Utf8Decoder().convert(response.bodyBytes)));
    //return ListOfVendor.fromList(jsonDecode(response.body));
  }
}

//
class ListOfVendor {
  List<Vendor> vendors;
  ListOfVendor({required this.vendors});
  factory ListOfVendor.fromList(List list) {
    List<Vendor> _vendors = [];

    for (var element in list) {
      _vendors.add(Vendor.fromJson(element));
    }
    return ListOfVendor(vendors: _vendors);
  }
}

//
class Vendor {
  int id;
  String vendor_name;
  String user;
  String location;
//
  Vendor({
    required this.id,
    required this.vendor_name,
    required this.user,
    required this.location,
  });

  factory Vendor.fromJson(map) {
    return Vendor(
      id: map['id'],
      vendor_name: map['vendor_name'],
      user: map['user'],
      location: map['location'],
    );
  }
}
