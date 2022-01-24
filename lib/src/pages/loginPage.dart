import 'package:flutter/material.dart';
import 'package:front_end_forestlover/src/helpers/secure_storage.dart';
import 'package:front_end_forestlover/src/services/authServices.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;
  bool hidePassword = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.clear();
    _emailController.dispose();
    _passwordController.clear();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.amberAccent,
          body: Stack(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 50),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.cyan.shade300, Colors.cyan.shade800])),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.only(
                        left: 20, right: 20, top: 260, bottom: 20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: _emailController,
                            decoration: InputDecoration(labelText: "email"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              labelText: "Password",
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                              onPressed: () async {
                                _login(context);
                                print(_emailController.text);
                                print(_passwordController.text);
                                _onLogin(_emailController.text,
                                    _passwordController.text, context);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Iniciar Sesion'),
                                  if (isLoading)
                                    Container(
                                      height: 20,
                                      width: 20,
                                      margin: const EdgeInsets.only(left: 20),
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    )
                                ],
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('No estas registrado?'),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed('/register');
                                  },
                                  child: Text('Registrarme'))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }

  Widget _loginUI(BuildContext context) {
    return SingleChildScrollView(
      child: Text('g'),
    );
  }

  void _login(BuildContext context) {
    if (!isLoading) {
      setState(() {
        isLoading = true;
      });
    }
  }

  void _onLogin(String email, String password, BuildContext context) async {
    try {
      print('Dentro de _onLoign'+email);
      final data = await authServices.login(email, password);
      print(data);
      // await Future.delayed(const Duration(milliseconds: 350));
    } catch (e) {
      print(e);
    }
  }
}
