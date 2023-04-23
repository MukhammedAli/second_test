class JsonDataModel { 
  String? name;
  List<dynamic>? web_pages;


  JsonDataModel({
 this.web_pages,
 this.name,
 
 
  });

  factory JsonDataModel.fromJson(Map<String, dynamic> json) {
  
  return JsonDataModel(
     name : json['name'],
     web_pages : json['web_pages']
 

);
  
  }
}

 