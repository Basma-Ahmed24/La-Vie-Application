
import 'package:flutter/material.dart';
import 'package:la_vie/bloc_app/app_cubit.dart';

class SearchScreen extends StatelessWidget {
  @override
  List<dynamic> searchlist = AppCubit().All;

  List<dynamic> filteredproducrs = [];
  var textcontroller = TextEditingController();



  _searchfunction() {
    for (int i = 0; i < searchlist.length; i++) {
      var item = searchlist[i];
      if (item.toLowerCase().conains(textcontroller.text.toLowerCase())) {
        filteredproducrs.add(item);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    print(searchlist);
    // TODO: implement build
    return Scaffold(
      body: Padding(padding: const EdgeInsets.all(20),
        child: ListView(
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [ const SizedBox(height: 20,), Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 1.1,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12),
                    child: TextField(onChanged: (value) {
                      _searchfunction();
                    },
                      controller: textcontroller,
                      onSubmitted: (value) {
                        textcontroller.clear();

                      },
                      style: const TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white38,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2.5,
                                color: Color.fromRGBO(19, 10, 105, 0.7))),
                        hintText: "Search",
                        hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 16),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.black26,
                        ),
                      ),
                    )),

          Column(children: const [


            SizedBox(width: 250,height:370 ,child: Image(image:AssetImage('assets/img_6.png'))),Text("Not found",
              style: TextStyle(fontSize:24,fontWeight: FontWeight.bold ),textAlign: TextAlign.center,),SizedBox(height: 10,),
            Text("Sorry, the keyword you entered cannot be found, please check again or search with another keyword. ",
              maxLines: 3,style: TextStyle(fontSize: 18,color: Colors.grey),textAlign: TextAlign.center,)],) ],
              ),
            ]),
      ),
    );
  }
}