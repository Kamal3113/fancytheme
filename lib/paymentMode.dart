
import 'package:fancyapp/orderconfirmed.dart';
import 'package:flutter/material.dart';

import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
class PaymentMode extends StatefulWidget {
 

  @override
  State<PaymentMode> createState() => _PaymentModeState();
}

class _PaymentModeState extends State<PaymentMode> {
 String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.7),
        width: 2.0,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,
        title:Center(child: Text("Checkout",style: TextStyle(color: Colors.purple),), )),
      body: Column(
        children: [
          Expanded(flex: 8,child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  Padding(padding: EdgeInsets.only(top: 20,left: 10),child:Text("Step 2",style: TextStyle(fontSize: 16),)),
         Padding(padding: EdgeInsets.only(left: 20),child:Text("Payment",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),

        Expanded(flex:8,child:  Container(
        
          decoration: BoxDecoration(
          
            color: Colors.white,
          ),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                CreditCardWidget(
           
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  showBackView: isCvvFocused,
                  obscureCardNumber: true,
                  obscureCardCvv: true,
               
                  cardBgColor: Colors.red,
                 
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        CreditCardForm(
                          formKey: formKey,
                          obscureCvv: true,
                          obscureNumber: true,
                          cardNumber: cardNumber,
                          cvvCode: cvvCode,
                       
                          cardHolderName: cardHolderName,
                          expiryDate: expiryDate,
                          themeColor: Colors.blue,
                          textColor: Colors.white,
                          cardNumberDecoration: InputDecoration(
                            labelText: 'Number',
                            hintText: 'XXXX XXXX XXXX XXXX',
                            hintStyle: const TextStyle(color: Colors.black),
                            labelStyle: const TextStyle(color: Colors.black),
                            focusedBorder: border,
                            enabledBorder: border,
                          ),
                          expiryDateDecoration: InputDecoration(
                            hintStyle: const TextStyle(color: Colors.black),
                            labelStyle: const TextStyle(color: Colors.black),
                            focusedBorder: border,
                            enabledBorder: border,
                            labelText: 'Expired Date',
                            hintText: 'XX/XX',
                          ),
                          cvvCodeDecoration: InputDecoration(
                            hintStyle: const TextStyle(color: Colors.black),
                            labelStyle: const TextStyle(color: Colors.black),
                            focusedBorder: border,
                            enabledBorder: border,
                            labelText: 'CVV',
                            hintText: 'XXX',
                          ),
                          cardHolderDecoration: InputDecoration(
                            hintStyle: const TextStyle(color: Colors.black),
                            labelStyle: const TextStyle(color: Colors.black),
                            focusedBorder: border,
                            enabledBorder: border,
                            labelText: 'Card Holder',
                          ),
                          onCreditCardModelChange: onCreditCardModelChange,
                        ),
                      
                     
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),),
         
      ],
      
      
    
          )),
           Expanded(flex: 1,child:    Center(child:       RaisedButton(     shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),color: Color(0xff37274a),onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderConfirmed()));
        if (formKey.currentState.validate()) {
                              print('valid!');
                            } else {
                              print('invalid!');
                            }},child:Text("      Next      ",style: TextStyle(fontSize: 20,color: Colors.white),)) 
      ,))
        ],
      ),
    );
  }
   void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
