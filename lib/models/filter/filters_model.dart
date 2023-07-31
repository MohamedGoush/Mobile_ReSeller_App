class FiltersModel {
  List<String>? make;
  List<String>? condition;
  List<String>? storage;
  List<String>? ram;

  FiltersModel({this.make, this.condition, this.storage, this.ram});

  FiltersModel.fromJson(Map<String, dynamic> json) {
    make = json["make"] == null ? null : List<String>.from(json["make"]);
    condition =
        json["condition"] == null ? null : List<String>.from(json["condition"]);
    storage =
        json["storage"] == null ? null : List<String>.from(json["storage"]);
    ram = json["ram"] == null ? null : List<String>.from(json["ram"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (make != null) {
      _data["make"] = make;
    }
    if (condition != null) {
      _data["condition"] = condition;
    }
    if (storage != null) {
      _data["storage"] = storage;
    }
    if (ram != null) {
      _data["ram"] = ram;
    }
    return _data;
  }
}
