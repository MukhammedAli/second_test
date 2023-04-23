import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:secondtest/model/jsondatamodel.dart';
import 'package:secondtest/route/route_constants.dart';
import 'package:secondtest/widgets/mybutton.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:url_launcher/url_launcher.dart';
class UniversityList extends StatefulWidget {
  const UniversityList({super.key});

  @override
  State<UniversityList> createState() => _UniversityListState();
}

class _UniversityListState extends State<UniversityList> {

   final List<JsonDataModel> _jsonlist = [];




  void initState() { 
      readJsonData().then((value) => _jsonlist.addAll(value));
  
    super.initState();
  }

  

  Future<List<JsonDataModel>> readJsonData() async { 



  
    final response  = await http.get(Uri.parse('http://universities.hipolabs.com/search?country=Kazakhstan'));
    List<JsonDataModel> list = [];
    

    
    if (response.statusCode == 200) { 
      final jsonresponse = jsonDecode(response.body);
      
      for ( var jsondata in jsonresponse) { 
        list.add(JsonDataModel.fromJson(jsondata));
      }
    return list;

    }
    else { 
      throw Exception(
        'Не удалось загрузить информацию'
      );
    }
    
   
  }

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
        backgroundColor: Color.fromRGBO(243, 244, 246, 1),
         
            body: FutureBuilder(
              future: readJsonData(),
              builder: (context, data) {
          if (data.hasError) { 
            return Center(child: Column(
              children: [

                Text("${data.error}"),
                MyButton(onPressed: 
               () => setState(() {
                 
               }),
                 text: 'Обновить',
                ),
                
              
              ],
            ),);
             }
            else if (data.hasData) {
              
              return Align(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, ProfileRoute),
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Align
                        (alignment: Alignment.topRight,
                          child: Container(
                            
                            width: 50,
                            height: 50,
                            child: Icon(CupertinoIcons.profile_circled,
                            size: 50,),
                            ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 21.0),
                      child: Text('${_jsonlist.length} университетов',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: 500,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: _jsonlist.length,
                          itemBuilder: (context,index){
                            return  
                      
                      //                   InkWell(
                      //     onTap: () => print('Hi'),
                      //     child: SizedBox(
                      //     height: 40,
                      //     width: double.infinity,
                      //     child: Container(
                      //         decoration: BoxDecoration(
                      //             border: Border.all(color: Colors.black)),
                      //             child: Text(
                      //               _jsonlist[index].name.toString(),
                          
                      //             ),
                      //         ),
                      //     ),
                      // );
                            
                            InkWell(
                              onTap: () async { 
                                final url = _jsonlist[index].web_pages!.first.toString();
                                if (await canLaunch(url)) { 
                                  await launch(url);
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  
                              
                                  width: 333,
                                  height: 60,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
                                  color: Color.fromRGBO(255, 255, 255, 1)
                                  ),
                                  child: ListTile(
                                    title:   Text(_jsonlist[index].name.toString()),
                                    trailing: Icon(CupertinoIcons.arrow_right),
                                                
                                  ),
                                ),
                              ),
                            ); 
                          }
                        ),
                      ),
                    ),
                  Spacer()],
                ),
              );
               
            } else { 
              return Center(child: CircularProgressIndicator(color: Color.fromRGBO(187, 107, 217, 1),),);
            }
          }
          ),
          );
  }
}