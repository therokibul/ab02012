import 'package:ab02012/pages/home.dart';
import 'package:ab02012/widgets/appbar.dart';
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

  bool showLoading = false;

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
            onPressed: () async {},
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
          onPressed: () async {},
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
