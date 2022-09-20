// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:aba_mobile/widgets/button.dart';
import 'package:aba_mobile/widgets/logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: _buildAppBar,
      drawer: Drawer(),
      body: _buildBody,
    );
  }

  AppBar get _buildAppBar {
    return AppBar(
      title: abaLogo,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_active_outlined,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.phone_callback,
            size: 28,
          ),
        )
      ],
    );
  }

  Widget get _buildBody {
    return Column(
      children: [
        Flexible(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Colors.white,
                  Theme.of(context).colorScheme.secondary,
                ],
              ),
            ),
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 1.0,
              mainAxisSpacing: 1.0,
              childAspectRatio: 0.9,
              padding: const EdgeInsets.only(top: 5),
              children: [
                MenuButton(
                  label: 'Accounts',
                  icon: Icons.wallet,
                ),
                MenuButton(
                  label: 'Cards',
                  icon: Icons.credit_card,
                ),
                MenuButton(
                  label: 'Payment',
                  icon: CupertinoIcons.money_dollar,
                ),
                MenuButton(
                  label: 'New Account',
                  icon: Icons.open_in_new,
                ),
                MenuButton(
                  label: 'Cash to ATM',
                  icon: Icons.wallet_giftcard,
                ),
                MenuButton(
                  label: 'Transfers',
                  icon: Icons.currency_exchange_outlined,
                ),
                MenuButton(
                  label: 'Scan QR',
                  icon: Icons.qr_code_scanner_rounded,
                ),
                MenuButton(
                  label: 'Loans',
                  icon: Icons.local_atm_rounded,
                ),
                MenuButton(
                  label: 'Locator',
                  icon: Icons.pin_drop_outlined,
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.only(left: 20),
            width: double.infinity,
            color: Color(0xFF00BCD5),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quick Transfer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Create your templates here to make \n your transfers quicker',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: -40,
                  bottom: -40,
                  child: Icon(
                    Icons.circle,
                    color: Colors.white.withOpacity(0.5),
                    size: 180,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Icon(
                    CupertinoIcons.repeat,
                    color: Color(0xFF00BCD5).withOpacity(0.5),
                    size: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.only(left: 20),
            width: double.infinity,
            color: Color(0xFFEE534F),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quick Payment',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Paying your bills with templates are\n faster',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: -40,
                  bottom: -40,
                  child: Icon(
                    Icons.circle,
                    color: Colors.white.withOpacity(0.5),
                    size: 180,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Icon(
                    CupertinoIcons.money_dollar,
                    color: Color(0xFFEE534F).withOpacity(0.5),
                    size: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
