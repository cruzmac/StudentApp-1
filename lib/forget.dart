import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController emailcontroller = TextEditingController();

  Future passwordreset()async{
   try{
    final forgot_pwd_email ={
      'email': emailcontroller.text.trim(),
    };

   }catch(e){
    print('Error');
   }

  }

  @override
  Widget build(BuildContext context) {
   final  TextEditingController emailcontroller = TextEditingController();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextForm(labelText: 'Email',controller: emailcontroller,),  
        ],
      ),
    );
  }
}

class TextForm extends StatefulWidget {
  const TextForm({super.key, required this.labelText,required this.controller});
final String labelText;
final TextEditingController controller;
  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.controller,
        style:const  TextStyle(color: Colors.black),
        cursorColor: Colors.black,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.black),
          labelText: widget.labelText,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(3)),
            borderSide: BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(3)),
            borderSide: BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
          fillColor: Colors.black,
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
      );
  }
}
