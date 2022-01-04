import 'package:ab02012/pages/home.dart';
import 'package:ab02012/widgets/appbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

enum MobileVarificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  MobileVarificationState currentState =
      MobileVarificationState.SHOW_MOBILE_FORM_STATE;
  final phoneController = TextEditingController();
  final otpController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  bool showLoading = false;
 late String verificationId;
void SignInWithPhone AuthCredential(PhoneAuthCredential phoneAuthCredential) async {
  setState(() {
    showLoading = false;
  });
  try {
    final authCredential = await _auth.signInWithCredential(phoneAuthCredential);
    setState(() {
      showLoading =true;
    });
    if(authCredential.user != null){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    }
  } on FirebaseException catch (e) {
   setState(() {
     showLoading = false;
   });
   _scaffoldkey.currentState!.showSnackBar(SnackBar(content: Text(e.message.toString())));
  }
}
  getMobileFormWidget(context) {
    return Center(
      child: Column(
        children: [
          TextField(
            controller: phoneController,
            decoration: InputDecoration(
              hintText: 'Phone Number',
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () async {
              setState(() {
                showLoading = true;
              });
              await _auth.verifyPhoneNumber(
                phoneNumber: phoneController.text,
                 verificationCompleted: ( phoneAuthCredential)async{
                   setState(() {
                     showLoading = false;
                   });
                   SignInWithPhoneAuthCredential(phoneAuthCredential);
                 }, 
                 verificationFailed: (verificationFailed)async{
                    setState(() {
                     showLoading = false;
                   });
                   _scaffoldkey.currentState!.showSnackBar(SnackBar(content: Text(verificationFailed.message.toString())));
                 }, 
                 codeSent: (verificationFailed, resendingToken)async{
                    setState(() {
                      showLoading = false;
                      currentState = MobileVarificationState.SHOW_OTP_FORM_STATE;
                      verificationFailed = verificationFailed;
                    });
                 }, 
                 codeAutoRetrievalTimeout: (varificationId)async{},);

            },
            child: Text('Send'),
          ),
        ],
      ),
    );
  }

  getOtpFormWidget(context) {
    return Column(
      children: [
        TextField(
          controller: otpController,
          decoration: InputDecoration(
            hintText: 'Enter OTP',
          ),
        ),
        SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () async {
            PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
              verificationId: verificationId,
               smsCode: otpController.text);
            SignInWithPhoneAuthCredential(phoneAuthCredential);
          },
          child: Text('Verify'),
        ),
      ],
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: showLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : currentState == MobileVarificationState.SHOW_MOBILE_FORM_STATE
                  ? getMobileFormWidget(context)
                  : getOtpFormWidget(context),
        ),
      ),
    );
  }
}
