import 'package:e_book/Common/Widgets/side_menu_bar/side_menu_bar.dart';
import 'package:e_book/Screens/Author_screen/author_screen.dart';
import 'package:e_book/Screens/Edit_profile_screen/edit_profile_screen.dart';
import 'package:e_book/Screens/Search_screen/search_screen.dart';
import 'package:e_book/Screens/Settings_screen/setting_screen.dart';
import 'package:e_book/Screens/auth_screens/forget_password_screen.dart';
import 'package:e_book/Screens/auth_screens/password_creation_screen.dart';
import 'package:e_book/Screens/auth_screens/reset_password_screen.dart';
import 'package:e_book/Screens/auth_screens/sign_in_screen.dart';
import 'package:e_book/Screens/auth_screens/sign_up_screen.dart';
import 'package:e_book/Screens/author_profile_screen/author_profile_screen.dart';
import 'package:e_book/Screens/book_detail_screen.dart';
import 'package:e_book/Screens/bottom_nav_bar.dart';
import 'package:e_book/Screens/cart_screen/cart_screen.dart';
import 'package:e_book/Screens/collections_screen/collections_screen.dart';
import 'package:e_book/Screens/download_screen/download_screen.dart';
import 'package:e_book/Screens/home_screen/home_screen.dart';
import 'package:e_book/Screens/notification_screen/notification_screen.dart';
import 'package:e_book/Screens/payment_screen/payment_screen.dart';
import 'package:e_book/Screens/profile_screen/profile_screen.dart';
import 'package:e_book/Screens/review_screen/review_screen.dart';
import 'package:e_book/Screens/storage_screen/storage_screen.dart';
import 'package:e_book/Screens/submit_review_screen/submit_review_screen.dart';
import 'package:e_book/Screens/summary_screen/summary_screen.dart';
import 'package:e_book/Screens/term_condtion_screen/term_condition_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case ForgetPasswordScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ForgetPasswordScreen(),
      );
    case PasswordCreationScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const PasswordCreationScreen(),
      );
    case ResetPasswordScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ResetPasswordScreen(),
      );
    case SignInScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SignInScreen(),
      );

    case SignUpScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SignUpScreen(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case BookDetailsScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => BookDetailsScreen(),
      );
    case BottomNavBarScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => BottomNavBarScreen(),
      );
    case CartScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CartScreen(),
      );
    case SideMenuBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SideMenuBar(),
      );
    case CollectionsScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CollectionsScreen(),
      );
    case SearchScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SearchScreen(),
      );
    case DownloadScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => DownloadScreen(),
      );
    case PaymentScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => PaymentScreen(),
      );
    case SummaryScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SummaryScreen(),
      );
    case AuthorScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => AuthorScreen(),
      );
    case SettingsScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SettingsScreen(),
      );
    case NotificationScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => NotificationScreen(),
      );
    case StorageScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => StorageScreen(),
      );
    case TermsAndConditionsScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => TermsAndConditionsScreen(),
      );
    case ProfileScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => ProfileScreen(),
      );
    case EditProfileScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => EditProfileScreen(),
      );
    case ReviewScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => ReviewScreen(),
      );
    case SubmitReviewScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SubmitReviewScreen(),
      );
    case AuthorProfileScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => AuthorProfileScreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('This page does not exist...'),
          ),
        ),
      );
  }
}
