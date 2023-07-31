import '../../helpers/export_helper.dart';

class FiltersCoreModel {
  FiltersModel? filters;
  String? message;

  FiltersCoreModel({this.filters, this.message});

  FiltersCoreModel.fromJson(Map<String, dynamic> json) {
    filters =
        json["filters"] == null ? null : FiltersModel.fromJson(json["filters"]);
    message = json["message"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (filters != null) {
      _data["filters"] = filters?.toJson();
    }
    _data["message"] = message;
    return _data;
  }
}
