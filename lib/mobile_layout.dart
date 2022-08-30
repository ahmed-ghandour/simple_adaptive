
import 'package:flutter/material.dart';
import 'package:responsive_design/constant.dart';

import 'adaptive_indicator.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body :
        Column(
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
                              hintText: "User Name"
                            ),
                          ),
                          const SizedBox(
                            height: 20,),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Password"
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
