import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  var formKey = GlobalKey<FormState>();
  TextEditingController forgotPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Form(
                  child: Column(
                    children: [
                      Text(
                          'Please, enter your email address. You will receive a link to create a new password via email.'),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: forgotPassword,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        cursorColor: Colors.black,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Pleas enter your email';
                          }
                          return null;
                        },
                        onFieldSubmitted: (val) => {},
                        onSaved: (val) => {},
                        onChanged: (val) => {},
                        onTap: () => {},
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Your email',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'send'.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
