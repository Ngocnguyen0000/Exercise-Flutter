import 'package:flutter/material.dart';

class LoginFormSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: 'User Name or Email',
              hintText: 'Enter your user name or email',
              prefixIcon: Icon(Icons.email_outlined),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
              prefixIcon: const Icon(Icons.lock_outline_rounded),
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: const Icon(Icons.visibility),
                onPressed: () {},
              ),
            ),
          ),
          const SizedBox(height: 10),
          CheckboxListTile(
            value: false,
            onChanged: (bool? value) {},
            title: const Text('Remember Me'),
            controlAffinity: ListTileControlAffinity.leading,
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}