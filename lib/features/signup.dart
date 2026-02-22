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
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double currentShortestSide = constraints.maxWidth < constraints.maxHeight
                ? constraints.maxWidth
                : constraints.maxHeight;
            final double scaleFactor = (currentShortestSide / 375.0).clamp(0.8, 1.2);
            final double maxContentWidth = 550.0; // Slightly wider for signup due to side-by-side fields

            return Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: maxContentWidth),
                child: Column(
                  children: [
                    // --- TOP CONTENT (SCROLLABLE) ---
                    Expanded(
                      child: Center(
                        child: ScrollConfiguration(
                          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
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
                                      icon: Icons.person_add_alt_1_outlined,
                                      size: JJSizes.iconMd * scaleFactor,
                                      color: theme.primaryColor,
                                      backgroundColor: theme.primaryColor.withOpacity(0.1),
                                    ),
                                    SizedBox(height: JJSizes.defaultSpace * scaleFactor),

                                  /// Title
                                  Text(
                                    "Create Account",
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
                                          text: "Sign up to start shopping at ",
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

                                  /// First & Last Name
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: "First Name",
                                            prefixIcon: Icon(
                                              Icons.person_outline,
                                              color: theme.primaryColor,
                                              size: (IconTheme.of(context).size ?? 24) * scaleFactor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: JJSizes.spaceBtwInputFields * scaleFactor),
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: "Last Name",
                                            prefixIcon: Icon(
                                              Icons.person_outline,
                                              color: theme.primaryColor,
                                              size: (IconTheme.of(context).size ?? 24) * scaleFactor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: JJSizes.spaceBtwInputFields * scaleFactor),

                                  /// Username
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Username",
                                      prefixIcon: Icon(
                                        Icons.person_pin_outlined,
                                        color: theme.primaryColor,
                                        size: (IconTheme.of(context).size ?? 24) * scaleFactor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: JJSizes.spaceBtwInputFields * scaleFactor),

                                  /// Email
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      prefixIcon: Icon(
                                        Icons.email_outlined,
                                        color: theme.primaryColor,
                                        size: (IconTheme.of(context).size ?? 24) * scaleFactor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: JJSizes.spaceBtwInputFields * scaleFactor),

                                  /// Phone Number
                                  TextFormField(
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: "Phone Number",
                                      prefixIcon: Icon(
                                        Icons.phone_outlined,
                                        color: theme.primaryColor,
                                        size: (IconTheme.of(context).size ?? 24) * scaleFactor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: JJSizes.spaceBtwInputFields * scaleFactor),

                                  /// Password
                                  TextFormField(
                                    obscureText: !showPassword,
                                    decoration: InputDecoration(
                                      hintText: "Password",
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
                                  SizedBox(height: JJSizes.spaceBtwSections * scaleFactor),

                                  /// Terms & Conditions Checkbox
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 24 * scaleFactor,
                                        height: 24 * scaleFactor,
                                        child: Checkbox(
                                          value: agreeToTerms,
                                          onChanged: (val) => setState(() => agreeToTerms = val!),
                                        ),
                                      ),
                                      SizedBox(width: JJSizes.spaceBtwItems * scaleFactor),
                                      Expanded(
                                        child: Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "I agree to ",
                                                style: theme.textTheme.bodySmall?.copyWith(
                                                  fontSize: (theme.textTheme.bodySmall?.fontSize ?? 12) * scaleFactor,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Privacy Policy",
                                                style: theme.textTheme.bodyMedium?.copyWith(
                                                  color: theme.primaryColor,
                                                  decoration: TextDecoration.underline,
                                                  decorationColor: theme.primaryColor,
                                                  fontSize: (theme.textTheme.bodyMedium?.fontSize ?? 14) * scaleFactor,
                                                ),
                                              ),
                                              TextSpan(
                                                text: " and ",
                                                style: theme.textTheme.bodySmall?.copyWith(
                                                  fontSize: (theme.textTheme.bodySmall?.fontSize ?? 12) * scaleFactor,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Terms of use",
                                                style: theme.textTheme.bodyMedium?.copyWith(
                                                  color: theme.primaryColor,
                                                  decoration: TextDecoration.underline,
                                                  decorationColor: theme.primaryColor,
                                                  fontSize: (theme.textTheme.bodyMedium?.fontSize ?? 14) * scaleFactor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: JJSizes.spaceBtwSections * scaleFactor),

                                  /// Signup Button
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Create Account",
                                        style: TextStyle(fontSize: 16 * scaleFactor),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: JJSizes.spaceBtwItems * scaleFactor),

                                  /// Divider
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(child: Divider(thickness: 0.5, endIndent: 5)),
                                      Text(
                                        "Or Sign Up With",
                                        style: theme.textTheme.bodyMedium?.copyWith(
                                          fontSize: (theme.textTheme.bodyMedium?.fontSize ?? 14) * scaleFactor,
                                        ),
                                      ),
                                      Expanded(child: Divider(thickness: 0.5, indent: 5)),
                                    ],
                                  ),
                                  SizedBox(height: JJSizes.spaceBtwItems * scaleFactor),

                                  /// Social Buttons
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
                                            "Sign up with Google",
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
                  ),

                    // --- BOTTOM FOOTER (FIXED) ---
                    Padding(
                      padding: EdgeInsets.only(bottom: JJSizes.defaultSpace * scaleFactor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account? ",
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontSize: (theme.textTheme.bodyMedium?.fontSize ?? 14) * scaleFactor,
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.pop(context),
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            child: Text(
                              "Sign in",
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
