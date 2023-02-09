import 'package:flutter/material.dart';

class FormFieldWidget extends StatefulWidget {

  final TextEditingController textEditingController;
  final String? hintText;
  final TextInputType? keyboardType;
  final String? errorText;
  final String? labelText;
  final bool isRequired;
  final String? suffixText;
  final double? errorTextSize;


  const FormFieldWidget({Key? key,required this.textEditingController,this.hintText,this.keyboardType,this.errorText,this.labelText,this.isRequired=false, this.suffixText, this.errorTextSize= 12}) : super(key: key);

  @override
  State<FormFieldWidget> createState() => _FormFieldWidgetState();
}

class _FormFieldWidgetState extends State<FormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 7),
          child: RichText(
            text: TextSpan(
              text: widget.labelText,
              style: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400 ),
              children:  [
                TextSpan(
                    text: widget.isRequired ? ' *' : '',
                    style: const TextStyle(
                      color: Colors.red,
                    ))
              ] 
            ),
            textScaleFactor: 1,
          ),
        ),
        SizedBox(
          // height: 45.h,
          child: TextFormField(
            keyboardType: widget.keyboardType,
            controller: widget.textEditingController,
            decoration:InputDecoration(
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                fontSize: 12
              ),
              errorStyle: TextStyle(
                fontSize: widget.errorTextSize!
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 2,color: Colors.blue )
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 2,color: Colors.blue )
              ),
              suffixIcon: widget.suffixText != null ? Text(widget.suffixText! , style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14
                ),
              ) : const SizedBox(),
              suffixIconConstraints: const BoxConstraints(
                minWidth: 2,
                minHeight: 2,
              ),
              
            ),
            // validator: (value){
            //     return widget.validation(value!,widget.errorText);
            // },
          ),
        ),
      ],
    );
  }
}
