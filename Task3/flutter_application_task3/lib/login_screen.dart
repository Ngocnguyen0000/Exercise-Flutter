import 'package:flutter/material.dart';
import 'login_form_section.dart';
import 'login_brand_section.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _buildMainWidget(context),
      ),
    );
  }

  Widget _buildMainWidget(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 300,
        maxWidth: 600,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (screenWidth > 500)
            Expanded(
              child: LoginBrandSection(),
            ),
          if (screenWidth > 500) const SizedBox(width: 20),
          Expanded(
            child: LoginFormSection(),
          ),
        ],
      ),
    );
  }
}