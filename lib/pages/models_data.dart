class models_data {
  int? id;
  String? image;
  String? name;
  String? area;

  models_data(this.id, this.image, this.name, this.area);

  models_data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
    area = json['area'];
    
  }
}
