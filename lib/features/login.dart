import 'package:e_commerce/common/widgets/icons/google_logo.dart';
import 'package:e_commerce/common/widgets/icons/jj_circular_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool showPassword = false;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // --- TOP CONTENT (SCROLLABLE) ---
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(JJSizes.defaultSpace),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          /// Logo
                          JJCircularIcon(
                            icon: Icons.shopping_bag_outlined,
                            size: JJSizes.iconMd,
                            color: theme.primaryColor,
                            backgroundColor: theme.primaryColor.withOpacity(
                              0.1,
                            ),
                          ),
                          const SizedBox(height: JJSizes.defaultSpace),

                          /// Title
                          Text(
                            "Welcome Back!!",
                            style: theme.textTheme.headlineMedium,
                          ),
                          const SizedBox(height: JJSizes.sm),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Sign in to continue shopping at ",
                                  style: theme.textTheme.bodyMedium,
                                ),
                                TextSpan(
                                  text: JJTexts.appName,
                                  style: theme.textTheme.labelLarge?.copyWith(
                                    color: theme.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: JJSizes.spaceBtwSections),

                          /// Email
                          TextFormField(
                            validator: (value) =>
                                value!.isEmpty ? "Email is required" : null,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Enter your email",
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: theme.primaryColor,
                              ),
                            ),
                          ),
                          const SizedBox(height: JJSizes.spaceBtwInputFields),

                          /// Password
                          TextFormField(
                            validator: (value) =>
                                value!.isEmpty ? "Password is required" : null,
                            obscureText: !showPassword,
                            decoration: InputDecoration(
                              hintText: "Enter your password",
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: theme.primaryColor,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  showPassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: theme.primaryColor,
                                ),
                                onPressed: () => setState(
                                  () => showPassword = !showPassword,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: JJSizes.sm),

                          /// Remember Me & Forgot Password
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    child: Checkbox(
                                      value: rememberMe,
                                      onChanged: (val) =>
                                          setState(() => rememberMe = val!),
                                    ),
                                  ),
                                  const SizedBox(width: JJSizes.sm),
                                  const Text("Remember Me"),
                                ],
                              ),
                              InkWell(
                                onTap: () {},
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                child: Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: theme.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: JJSizes.spaceBtwSections),

                          /// Login Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Action
                                }
                              },
                              child: const Text("Login"),
                            ),
                          ),
                          const SizedBox(height: JJSizes.spaceBtwItems),

                          /// Social Login Divider
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  indent: 0,
                                  endIndent: 5,
                                ),
                              ),
                              Text(
                                "Or Sign In With",
                                style: theme.textTheme.bodyMedium,
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  indent: 5,
                                  endIndent: 0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: JJSizes.spaceBtwItems),

                          /// Google Login Button
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const GoogleLogo(size: JJSizes.iconSm),
                                  const SizedBox(width: JJSizes.spaceBtwItems),
                                  Text(
                                    "Sign in with Google",
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // --- BOTTOM FOOTER (FIXED) ---
            Padding(
              padding: const EdgeInsets.only(bottom: JJSizes.defaultSpace),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: theme.textTheme.bodyMedium,
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Text(
                      "Sign up",
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
