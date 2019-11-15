import 'dart:convert';


List<CostumerModel> userFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<CostumerModel>.from(jsonData.map((x) => CostumerModel.fromJson(x)));
}

String userToJson(List<CostumerModel> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}

class CostumerModel{
  final String name;
  final String age;
  final String direction;
  final String contact;
  final String insurance;

  CostumerModel({this.name, this.age, this.direction, this.contact, this.insurance});

  factory CostumerModel.fromJson(Map<String, dynamic> json) => new CostumerModel(
      name: "name",
      age: "age",
      direction: "direction",
      contact: "contact",
      insurance: "insurance"
  );

  Map<String, dynamic> toJson() =>{
    "name": name,
    "age" : age,
    "direction" : direction,
    "contact" : contact,
    "insurance" : insurance
  };

}