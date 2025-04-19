import 'package:flutter/material.dart';
import 'login_form_section.dart';
import 'login_brand_section.dart';

class LoginScreenV2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: _buildMainWidget(context),
        ),
      ),
    );
  }

  Widget _buildMainWidget(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 600) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: LoginBrandSection(),
          ),
          const SizedBox(height: 20),
          LoginFormSection(),
        ],
      );
    } else {
      return ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 300,
          maxWidth: 600,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: LoginBrandSection(),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: LoginFormSection(),
            ),
          ],
        ),
      );
    }
  }
}