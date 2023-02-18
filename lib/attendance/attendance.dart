import 'package:flutter/material.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  List<Items> data = generateItems(3);
  Widget buildListPanel(){
     return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded){
        setState(() {
          data[index].isExpanded = !isExpanded;
        });
      },
      children: data.map<ExpansionPanel>((Items items){
        return ExpansionPanel(
          headerBuilder: (BuildContext context ,bool isExpanded){ 
          return ListTile(title: Text(items.headerValue ?? ''),);
        }, body: ListTile(
          title:Text(items.expandedValue ?? ''),
          subtitle:const  Text(' data '),
        ),isExpanded: items.isExpanded,
        );
      }).toList(),
     );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Attendance'),),
      body: SingleChildScrollView(
        child: Container( 
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: Column(
            children: [
               Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical:10),
                    decoration: BoxDecoration(border:Border.all(),borderRadius: BorderRadius.circular(20)),
                    height: 100,
                    width: 250,
                    child:const  Text('Student Name',style: TextStyle(color: Colors.black,fontSize: 35),),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(child:Container(
                    height: 100,
                    decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(20)),
                  ))
                ],
               ),
               const SizedBox(height: 10,),
               Container(
                padding: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(20)),   
                child: buildListPanel(),  
               ),
            ],
          ),
        ),
      ),
    );
  }
}

class Items{
  String? expandedValue;
  String? headerValue;
  bool isExpanded;
  Items({this.expandedValue,this.headerValue,this.isExpanded=false});
}
List<Items> generateItems(int itemsno){
return List.generate(itemsno, (index){
return Items(
  headerValue: 'Panel $index',
  expandedValue: '$index panel'
);
});
}