import 'package:e_commerce/common/widgets/icons/google_logo.dart';
import 'package:e_commerce/common/widgets/icons/jj_circular_icon.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  bool showPassword = false;
  bool agreeToTerms = false;

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
                            icon: Icons.person_add_alt_1_outlined,
                            size: JJSizes.iconMd,
                            color: theme.primaryColor,
                            backgroundColor: theme.primaryColor.withOpacity(0.1),
                          ),
                          const SizedBox(height: JJSizes.defaultSpace),

                          /// Title
                          Text(
                            "Create Account",
                            style: theme.textTheme.headlineMedium,
                          ),
                          const SizedBox(height: JJSizes.sm),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Sign up to start shopping at ",
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

                          /// First & Last Name
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "First Name",
                                    prefixIcon: Icon(Icons.person_outline, color: theme.primaryColor),
                                  ),
                                ),
                              ),
                              const SizedBox(width: JJSizes.spaceBtwInputFields),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Last Name",
                                    prefixIcon: Icon(Icons.person_outline, color: theme.primaryColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: JJSizes.spaceBtwInputFields),

                          /// Username
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Username",
                              prefixIcon: Icon(Icons.person_pin_outlined, color: theme.primaryColor),
                            ),
                          ),
                          const SizedBox(height: JJSizes.spaceBtwInputFields),

                          /// Email
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Email",
                              prefixIcon: Icon(Icons.email_outlined, color: theme.primaryColor),
                            ),
                          ),
                          const SizedBox(height: JJSizes.spaceBtwInputFields),

                          /// Phone Number
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: "Phone Number",
                              prefixIcon: Icon(Icons.phone_outlined, color: theme.primaryColor),
                            ),
                          ),
                          const SizedBox(height: JJSizes.spaceBtwInputFields),

                          /// Password
                          TextFormField(
                            obscureText: !showPassword,
                            decoration: InputDecoration(
                              hintText: "Password",
                              prefixIcon: Icon(Icons.lock_outline, color: theme.primaryColor),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  showPassword ? Icons.visibility_off : Icons.visibility,
                                  color: theme.primaryColor,
                                ),
                                onPressed: () => setState(() => showPassword = !showPassword),
                              ),
                            ),
                          ),
                          const SizedBox(height: JJSizes.spaceBtwSections),

                          /// Terms & Conditions Checkbox
                          Row(
                            children: [
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Checkbox(
                                  value: agreeToTerms,
                                  onChanged: (val) => setState(() => agreeToTerms = val!),
                                ),
                              ),
                              const SizedBox(width: JJSizes.spaceBtwItems),
                              Expanded(
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: "I agree to ", style: theme.textTheme.bodySmall),
                                      TextSpan(
                                        text: "Privacy Policy",
                                        style: theme.textTheme.bodyMedium?.copyWith(
                                          color: theme.primaryColor,
                                          decoration: TextDecoration.underline,
                                          decorationColor: theme.primaryColor,
                                        ),
                                      ),
                                      TextSpan(text: " and ", style: theme.textTheme.bodySmall),
                                      TextSpan(
                                        text: "Terms of use",
                                        style: theme.textTheme.bodyMedium?.copyWith(
                                          color: theme.primaryColor,
                                          decoration: TextDecoration.underline,
                                          decorationColor: theme.primaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: JJSizes.spaceBtwSections),

                          /// Signup Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Create Account"),
                            ),
                          ),
                          const SizedBox(height: JJSizes.spaceBtwItems),

                          /// Divider
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Expanded(child: Divider(thickness: 0.5, endIndent: 5)),
                              Text("Or Sign Up With", style: theme.textTheme.bodyMedium),
                              const Expanded(child: Divider(thickness: 0.5, indent: 5)),
                            ],
                          ),
                          const SizedBox(height: JJSizes.spaceBtwItems),

                          /// Social Buttons
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const GoogleLogo(size: JJSizes.iconSm),
                                  const SizedBox(width: JJSizes.spaceBtwItems),
                                  Text("Sign up with Google", style: theme.textTheme.bodyLarge),
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
                  Text("Already have an account? ", style: theme.textTheme.bodyMedium),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Text(
                      "Sign in",
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
