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
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double currentShortestSide = constraints.maxWidth < constraints.maxHeight
                ? constraints.maxWidth
                : constraints.maxHeight;
            final double scaleFactor = (currentShortestSide / 375.0).clamp(0.8, 1.2);
            final double maxContentWidth = 450.0;

            return Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: maxContentWidth),
                child: Column(
                  children: [
                    // --- TOP CONTENT (SCROLLABLE) ---
                    Expanded(
                      child: Center(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.all(JJSizes.defaultSpace * scaleFactor),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  /// Logo
                                  JJCircularIcon(
                                    icon: Icons.shopping_bag_outlined,
                                    size: JJSizes.iconMd * scaleFactor,
                                    color: theme.primaryColor,
                                    backgroundColor: theme.primaryColor.withOpacity(0.1),
                                  ),
                                  SizedBox(height: JJSizes.defaultSpace * scaleFactor),

                                  /// Title
                                  Text(
                                    "Welcome Back!!",
                                    style: theme.textTheme.headlineMedium?.copyWith(
                                      fontSize: (theme.textTheme.headlineMedium?.fontSize ?? 24) * scaleFactor,
                                    ),
                                  ),
                                  SizedBox(height: JJSizes.sm * scaleFactor),
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Sign in to continue shopping at ",
                                          style: theme.textTheme.bodyMedium?.copyWith(
                                            fontSize: (theme.textTheme.bodyMedium?.fontSize ?? 14) * scaleFactor,
                                          ),
                                        ),
                                        TextSpan(
                                          text: JJTexts.appName,
                                          style: theme.textTheme.labelLarge?.copyWith(
                                            color: theme.primaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: (theme.textTheme.labelLarge?.fontSize ?? 12) * scaleFactor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: JJSizes.spaceBtwSections * scaleFactor),

                                  /// Email
                                  TextFormField(
                                    validator: (value) => value!.isEmpty ? "Email is required" : null,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: "Enter your email",
                                      prefixIcon: Icon(
                                        Icons.email_outlined,
                                        color: theme.primaryColor,
                                        size: (IconTheme.of(context).size ?? 24) * scaleFactor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: JJSizes.spaceBtwInputFields * scaleFactor),

                                  /// Password
                                  TextFormField(
                                    validator: (value) => value!.isEmpty ? "Password is required" : null,
                                    obscureText: !showPassword,
                                    decoration: InputDecoration(
                                      hintText: "Enter your password",
                                      prefixIcon: Icon(
                                        Icons.lock_outline,
                                        color: theme.primaryColor,
                                        size: (IconTheme.of(context).size ?? 24) * scaleFactor,
                                      ),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          showPassword ? Icons.visibility_off : Icons.visibility,
                                          color: theme.primaryColor,
                                          size: (IconTheme.of(context).size ?? 24) * scaleFactor,
                                        ),
                                        onPressed: () => setState(() => showPassword = !showPassword),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: JJSizes.sm * scaleFactor),

                                  /// Remember Me & Forgot Password
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 24 * scaleFactor,
                                            height: 24 * scaleFactor,
                                            child: Checkbox(
                                              value: rememberMe,
                                              onChanged: (val) => setState(() => rememberMe = val!),
                                            ),
                                          ),
                                          SizedBox(width: JJSizes.sm * scaleFactor),
                                          Text(
                                            "Remember Me",
                                            style: theme.textTheme.bodyMedium?.copyWith(
                                              fontSize: (theme.textTheme.bodyMedium?.fontSize ?? 14) * scaleFactor,
                                            ),
                                          ),
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
                                            fontSize: (theme.textTheme.bodyMedium?.fontSize ?? 14) * scaleFactor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: JJSizes.spaceBtwSections * scaleFactor),

                                  /// Login Button
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          // Action
                                        }
                                      },
                                      child: Text(
                                        "Login",
                                        style: TextStyle(fontSize: 16 * scaleFactor),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: JJSizes.spaceBtwItems * scaleFactor),

                                  /// Social Login Divider
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(child: Divider(thickness: 0.5, endIndent: 5)),
                                      Text(
                                        "Or Sign In With",
                                        style: theme.textTheme.bodyMedium?.copyWith(
                                          fontSize: (theme.textTheme.bodyMedium?.fontSize ?? 14) * scaleFactor,
                                        ),
                                      ),
                                      Expanded(child: Divider(thickness: 0.5, indent: 5)),
                                    ],
                                  ),
                                  SizedBox(height: JJSizes.spaceBtwItems * scaleFactor),

                                  /// Google Login Button
                                  SizedBox(
                                    width: double.infinity,
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          GoogleLogo(size: JJSizes.iconSm * scaleFactor),
                                          SizedBox(width: JJSizes.spaceBtwItems * scaleFactor),
                                          Text(
                                            "Sign in with Google",
                                            style: theme.textTheme.bodyLarge?.copyWith(
                                              fontSize: (theme.textTheme.bodyLarge?.fontSize ?? 16) * scaleFactor,
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
                        ),
                      ),
                    ),

                    // --- BOTTOM FOOTER (FIXED) ---
                    Padding(
                      padding: EdgeInsets.only(bottom: JJSizes.defaultSpace * scaleFactor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontSize: (theme.textTheme.bodyMedium?.fontSize ?? 14) * scaleFactor,
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.pushNamed(context, '/signup'),
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            child: Text(
                              " Sign up",
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: (theme.textTheme.bodyMedium?.fontSize ?? 14) * scaleFactor,
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
          },
        ),
      ),
    );
  }
}