import 'dart:convert';
import 'package:http/http.dart' as http;

//
class VendorService {
  Future<ListOfVendor> getVendor() async {
    var response = 
      await http.get(Uri.parse("https://www.somtammarket.com/vendor/Vendors/"));

   // return ListOfVendor.fromList(
      //jsonDecode(Utf8Decoder().convert(response.bodyBytes)));
    return ListOfVendor.fromList(jsonDecode(response.body));
  }
}

//
class ListOfVendor {
  List<Vendor> vendors;
  ListOfVendor({required this.vendors});
  factory ListOfVendor.fromList(List list) {
    List<Vendor> vendors = [];

    for (var element in list) {
      vendors.add(Vendor.fromJson(element));
    }
    return ListOfVendor(vendors: vendors);
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