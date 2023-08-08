import 'package:eso_e/screens/dashboard/bottom_nav_screens/dashboard_screen.dart';
import 'package:eso_e/screens/widgets/clients_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../model/clients_list_model.dart';
import '../../../utils/utils.dart';
import '../../create_customer/create_customer_screen.dart';
import '../../widgets/notification_counter.dart';

class ClientsScreen extends StatefulWidget {
  final VoidCallback backPressed;
  const ClientsScreen({Key? key, required this.backPressed}) : super(key: key);

  @override
  State<ClientsScreen> createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen> {
  Widget currentScreen = Utils.currentScreen;
  int currentTab = Utils.currentTab;

  @override
  void initState(){
    super.initState();
    setState(() {
      ClientListModel.foundClients  = ClientListModel.oneClient;
    });
  }
  onSearch(String search){
    debugPrint(search);
    setState(() {
      ClientListModel.foundClients = ClientListModel.oneClient.where((client) => client.surname.toLowerCase().contains(search)).toList();
    });
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.backPressed;
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: CircleAvatar(
              radius: 18, backgroundImage: const AssetImage('asset/png_icons/timothy.png'),
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  'asset/png_icons/timothy.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi ${Utils.name} 👋",
                  style: const TextStyle(fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),
                const SizedBox(height: 3.0),
                Text(Utils.portfolio,
                  style: const TextStyle(fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),),
              ]),
          actions: [IconButton(
              onPressed: () {},
              icon: Stack(
                children: [
                    SvgPicture.asset('asset/svg_icons/notification_icon.svg',
                    color: Utils.not_count > 0 ? const Color(0xFF2D88D8) : Colors.grey,
                    height: 30.0,
                    width: 20.0,
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Utils.not_count <= 99
                          ? const NotificationCounter1()
                          : const NotificationCounter2()
                  ),],))
          ],),
        backgroundColor: Colors.grey[100],
        body: ClientListModel.oneClient.isEmpty ? Center(
          child: Column(children: [
            const SizedBox(height: 15.0),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width*.13,
              margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFFEDEBE9)
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Container(
                    padding: const EdgeInsets.fromLTRB(25, 16, 8, 16),
                    child: Image.asset('asset/png_icons/search.png',),
                  ),
                  contentPadding: const EdgeInsets.only(top: 8, bottom: 10),
                  labelText: 'Search',
                  labelStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a search value';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 170.0),
            const Text("No Clients"),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {
                  // Button onPressed logic
                  Navigator.of(context).pushNamed(CreateCustomerScreen.routeName);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: Ink(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.width * .13,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF2B88D8), Color(0xFF0545EA)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 16.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 1.0),
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.transparent),
                                  child: const Padding(
                                      padding: EdgeInsets.all(1.5),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 16.0,
                                      ))),
                              const SizedBox(width: 10.0),
                              const Text('Create a Client',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            ])))),
          ]),)
            : ListView(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            children:  [
              const SizedBox(height: 15.0),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width*.13,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFFEDEBE9)
                ),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      onSearch(value);
                    });
                  },
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Container(
                      padding: const EdgeInsets.fromLTRB(25, 16, 8, 16),
                      child: Image.asset('asset/png_icons/search.png',),
                    ),
                    contentPadding: EdgeInsets.only(top: 8, bottom: 10),
                    labelText: 'Search',
                    labelStyle: const TextStyle(
                        color: Colors.black45,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                    // hintText: 'Email',
                    // hintStyle: TextStyle(color: Colors.black),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a search value';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 15.0),
              Container(
                  color: Colors.transparent,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: const ClientsList()),
            ])
        // (ClientListModel.foundClients.isNotEmpty ?
        //       : const Center(
        //             child: Column(
        //                 children: [
        //                   // Container(
        //                   //   width: MediaQuery.of(context).size.width,
        //                   //   height: MediaQuery.of(context).size.width*.13,
        //                   //   margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        //                   //   decoration: BoxDecoration(
        //                   //       shape: BoxShape.rectangle,
        //                   //       borderRadius: BorderRadius.circular(16),
        //                   //       color: const Color(0xFFEDEBE9)
        //                   //   ),
        //                   //   child: TextFormField(
        //                   //     decoration: InputDecoration(
        //                   //       border: InputBorder.none,
        //                   //       prefixIcon: Container(
        //                   //         padding: const EdgeInsets.fromLTRB(25, 16, 8, 16),
        //                   //         child: Image.asset('asset/search.png',),
        //                   //       ),
        //                   //       contentPadding: EdgeInsets.only(top: 8, bottom: 10),
        //                   //       labelText: 'Search',
        //                   //       labelStyle: const TextStyle(
        //                   //           color: Colors.black45,
        //                   //           fontSize: 14,
        //                   //           fontWeight: FontWeight.w600),
        //                   //     ),
        //                   //     validator: (value) {
        //                   //       if (value == null || value.isEmpty) {
        //                   //         return 'Please enter a search value';
        //                   //       }
        //                   //       return null;
        //                   //     },
        //                   //   ),
        //                   // ),
        //                   const SizedBox(height: 50.0),
        //                   const Text("Not Found",
        //                     style: TextStyle(fontSize: 20.0),),
        // ]),)
        // ),
      ),
    );
  }
}
