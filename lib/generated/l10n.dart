// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `FruitHub`
  String get appName {
    return Intl.message('FruitHub', name: 'appName', desc: '', args: []);
  }

  /// `Skip`
  String get onboardingSkip {
    return Intl.message('Skip', name: 'onboardingSkip', desc: '', args: []);
  }

  /// `Get Started`
  String get onboardingGetStarted {
    return Intl.message(
      'Get Started',
      name: 'onboardingGetStarted',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to FruitHUB`
  String get onboardingTitle1 {
    return Intl.message(
      'Welcome to FruitHUB',
      name: 'onboardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide collection of premium fresh fruits and get the best deals.`
  String get onboardingSubtitle1 {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide collection of premium fresh fruits and get the best deals.',
      name: 'onboardingSubtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Search & Shop`
  String get onboardingTitle2 {
    return Intl.message(
      'Search & Shop',
      name: 'onboardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `We offer you the best handpicked fruits. Browse details, photos and reviews to make sure you pick the perfect fruit.`
  String get onboardingSubtitle2 {
    return Intl.message(
      'We offer you the best handpicked fruits. Browse details, photos and reviews to make sure you pick the perfect fruit.',
      name: 'onboardingSubtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginTitle {
    return Intl.message('Login', name: 'loginTitle', desc: '', args: []);
  }

  /// `Email`
  String get loginEmail {
    return Intl.message('Email', name: 'loginEmail', desc: '', args: []);
  }

  /// `Password`
  String get loginPassword {
    return Intl.message('Password', name: 'loginPassword', desc: '', args: []);
  }

  /// `Login`
  String get loginButton {
    return Intl.message('Login', name: 'loginButton', desc: '', args: []);
  }

  /// `Don't have an account?`
  String get loginNoAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'loginNoAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get loginSignup {
    return Intl.message('Sign Up', name: 'loginSignup', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get loginForgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'loginForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login with Google`
  String get loginUsingGoogle {
    return Intl.message(
      'Login with Google',
      name: 'loginUsingGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Login with Facebook`
  String get loginUsingFacebook {
    return Intl.message(
      'Login with Facebook',
      name: 'loginUsingFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Login with Apple`
  String get loginUsingApple {
    return Intl.message(
      'Login with Apple',
      name: 'loginUsingApple',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get signupTitle {
    return Intl.message(
      'Create Account',
      name: 'signupTitle',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get signupName {
    return Intl.message('Full Name', name: 'signupName', desc: '', args: []);
  }

  /// `Email`
  String get signupEmail {
    return Intl.message('Email', name: 'signupEmail', desc: '', args: []);
  }

  /// `Password`
  String get signupPassword {
    return Intl.message('Password', name: 'signupPassword', desc: '', args: []);
  }

  /// `Sign Up`
  String get signupButton {
    return Intl.message('Sign Up', name: 'signupButton', desc: '', args: []);
  }

  /// `Already have an account?`
  String get signupHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'signupHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get signupLogin {
    return Intl.message('Login', name: 'signupLogin', desc: '', args: []);
  }

  /// `Reset Password`
  String get resetPasswordTitle {
    return Intl.message(
      'Reset Password',
      name: 'resetPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email and we'll send you a reset link.`
  String get resetPasswordSubtitle {
    return Intl.message(
      'Enter your email and we\'ll send you a reset link.',
      name: 'resetPasswordSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get resetPasswordEmail {
    return Intl.message(
      'Email',
      name: 'resetPasswordEmail',
      desc: '',
      args: [],
    );
  }

  /// `Send Reset Link`
  String get resetPasswordButton {
    return Intl.message(
      'Send Reset Link',
      name: 'resetPasswordButton',
      desc: '',
      args: [],
    );
  }

  /// `Reset link sent! Check your email.`
  String get resetPasswordSuccess {
    return Intl.message(
      'Reset link sent! Check your email.',
      name: 'resetPasswordSuccess',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get errorRequired {
    return Intl.message(
      'This field is required',
      name: 'errorRequired',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email`
  String get errorInvalidEmail {
    return Intl.message(
      'Enter a valid email',
      name: 'errorInvalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get errorWeakPassword {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'errorWeakPassword',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. Please try again.`
  String get errorGeneral {
    return Intl.message(
      'Something went wrong. Please try again.',
      name: 'errorGeneral',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
