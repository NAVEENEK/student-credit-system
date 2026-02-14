import 'package:flutter/material.dart';

class EnrollPage extends StatefulWidget {
  const EnrollPage({super.key});

  @override
  State<EnrollPage> createState() => _EnrollPageState();
}


class _EnrollPageState extends State<EnrollPage> {

  final _formKey=GlobalKey<FormState>();
  final TextEditingController _namecontroller=TextEditingController();
  String? _selectSem;
  String? _selectDepartment;
  String? _selectGender; 
  

  @override
void dispose(){
  _namecontroller.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              const Text(
                'Enroll to Event',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),

                const SizedBox(height: 20,),

                TextFormField(
                  controller: _namecontroller,
                  decoration: const InputDecoration(
                    label:Text("full name"),
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "This field is required";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 8,),

                DropdownButtonFormField<String>(
                  value: _selectSem,
                  decoration: const InputDecoration(
                    labelText:"Semester" ,
                    border: OutlineInputBorder()
                  ),

                  items: ["sem 1","sem 2","sem 3","sem 4","sem 5","sem 6","sem 7","sem 8"]
                  .map((sem)=>DropdownMenuItem<String>(
                    value: sem,
                    child: Text(sem),
                  )
                  )
                  .toList(),
                  onChanged: (value){
                    setState(() {
                      _selectSem=value;
                    });
                  },
                  validator: (value)=>
                  value == null?"Select semester":null,
                ),

                const SizedBox(height: 8,),

                DropdownButtonFormField(
                  value: _selectDepartment,
                  decoration: InputDecoration(
                    label: Text("Department"),
                    border: OutlineInputBorder()
                  ),

                  items: ["IT","CSE","MECH","EC","EEE","CE"]
                  .map((dep)=>DropdownMenuItem<String>(
                    value:dep,
                    child: Text(dep),
                    )
                  )
                  .toList(),

                  onChanged: (value){
                    setState(() {
                      _selectDepartment=value;
                    });
                  },
                  validator: (value)=>
                  value==null ? "select Department":null,
                  ),

                  const SizedBox(height: 8,),

                  RadioListTile(
                    title: Text("Male"),
                    value: "Male",
                   groupValue: _selectGender, 
                   onChanged: (value){
                    setState(() {
                      _selectGender=value;
                    });
                   }
                   ),

                   RadioListTile(
                    title: Text("Female"),
                    value: "Female", 
                    groupValue: _selectGender, 
                    onChanged: (value){
                      setState(() {
                        _selectGender=value;
                      });
                    }
                    ),



                const SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                          print("enrolled");
                          Navigator.pop(context);
                        }

                      },
                      child: Text("Enroll")
                     ),
                     SizedBox(width: 20,),
                     ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      }, 
                      child: Text("Cancel")
                      )
                  ],
                )

                


            ],

          )
          ),
      ),

    );
  }
}