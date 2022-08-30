import 'package:flutter/material.dart';
import 'package:responsive_design/adaptive_indicator.dart';
import 'package:responsive_design/constant.dart';

class Web extends StatelessWidget {
  const Web({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Row(
        children:
        [
          Expanded(
            child: Container(
              color: Colors.teal,
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                color: Colors.black45,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children:
                    [
                      const Text(" Ready to login to your account"),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "User Name",
                        ),
                      ),
                      const SizedBox(
                        height: 20,),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Password",
                        ),
                      ),
                      const SizedBox(
                        height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          MaterialButton(
                            onPressed: (){},
                            color: Colors.yellow,
                            child: const Text("Login"),
                          ),
                          const SizedBox(
                            width: 20,),
                          MaterialButton(
                            onPressed: (){},
                            color: Colors.yellow,
                            child: const Text("Register"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,),
                      AdaptiveIndicator(getOs())
                    ],
                  ),
                )
              ),
            ),
          )
        ],
      )
    );
  }
}
