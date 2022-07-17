import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stalkr/application/accounts_bloc/accounts_bloc.dart';
import 'package:stalkr/infra/account/account_dao_old.dart';
import 'package:stalkr/ui/edit_account_screen.dart';
import 'package:stalkr/ui/add_account_screen.dart';
import 'package:stalkr/ui/reusables/stalkr_app_bar.dart';

import '../application/accounts_bloc/accounts_state.dart';
import '../domain/account.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StalkrAppBar.appBar("Your stalk list"),
      body: _buildContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _goToAddAccountScreen(context),
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: Colors.black,
      ),
    );
  }

  _editUser(Account account, context) {
    // context.toScreen(DetailsScreen(account: account));
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DetailsScreen(account: account)));

    // context.toScreen(DetailsScreen(account:account));
  }

  _goToAddAccountScreen(context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => MainScreen(emptyMessage: "")));
  }

  Widget _buildContent() {
    return Container(
      color: Colors.white,
      child: BlocConsumer(
          bloc: AccountsBloc(),
          listener: (BuildContext context, AccountsState state) async {
            if (state is onError) {}
            if (state is OnLoading) {}
          },
          builder: (BuildContext context, AccountsState state) {
            Widget? w;
            state.when(
                onLoadState: () {
                  w = Scaffold(
                      body: Center(child: const CircularProgressIndicator()));
                },
                onAddState: (user) {},
                onInitialState: (accountsList) {
                  // Add to Sembast

                  w = Scaffold(body: _buildAccountsList(accountsList));
                },
                onErrorState: () {},
                onRefreshState: () {});

            return w ?? Container();
          }),
    );
  }

  Widget _buildAccountsList(accountsList) {
    return ListView.builder(
      itemCount: accountsList.length,
      itemBuilder: (context, index) => SizedBox(
        height: 80,
        child: Card(
          color: Colors.grey[200],
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
            child: GestureDetector(
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          child: accountsList[index]['imageUrl'] != null
                              ? SvgPicture.network(
                                  accountsList[index]['imageUrl']!)
                              : Container(),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  accountsList[index]['name'],
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  accountsList[index]['status'],
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    accountsList[index]['number'].toString(),
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              onTap: () async {
                _editUser(Account.fromJson(accountsList[index]), context);
              },
            ),
          ),
        ),
      ),
    );
  }
}
