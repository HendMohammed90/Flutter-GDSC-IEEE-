import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign up'.toUpperCase(),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.black,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Pleas enter your name';
                        }
                        return null;
                      },
                      onFieldSubmitted: (val) => {},
                      onSaved: (val) => {},
                      onChanged: (val) => {},
                      onTap: () => {},
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Your Name',
                        prefixIcon: Icon(
                          Icons.person_pin_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: emailController,
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
                          Icons.email,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: emailController,
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
                        labelText: 'Your password',
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Text('Already have an account?'),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'Sign up'.toUpperCase(),
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
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text('Or login with social account'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/124/124010.png'),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Image.network(
                              'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png'),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
