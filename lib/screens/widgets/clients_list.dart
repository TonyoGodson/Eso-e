import 'package:eso_e/model/clients_list_model.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../dashboard/bottom_nav_screens/client_details_screen.dart';

class ClientsList extends StatefulWidget {
  const ClientsList({Key? key}) : super(key: key);

  @override
  State<ClientsList> createState() => _ClientsListState();
}

class _ClientsListState extends State<ClientsList> {

  onSearch(String search){
    debugPrint(search);
    setState(() {
      ClientListModel.foundClients = ClientListModel.oneClient.where((client) => client.surname.toLowerCase().contains(search)).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          notification.disallowIndicator(); // Disable overscroll effect
          return true;
    },
    child: ListView.builder(
        // itemCount: ClientListModel.oneClient.length,
        itemCount: ClientListModel.foundClients.length,
        itemBuilder: (BuildContext context, int index){
        // var oneClient = ClientListModel.oneClient[index];
        var oneClient = ClientListModel.foundClients[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context,
                    ClientDetailsScreen.routeName,
                    arguments: oneClient);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * .17,
                color: Colors.transparent,
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Row(
                        children: [
                          Stack(
                            children: [CircleAvatar(
                            radius: 22.0,
                            backgroundColor: const Color(0xFFC7E0F4),
                            child: Text(
                              "${oneClient.surname?.substring(0, 1)}"
                                  "${oneClient.firstname?.substring(0, 1)}",
                              style: const TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF2B88D8)),),
                      ),
                              ]),
                          const SizedBox(width: 10.0),
                          Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("${oneClient.surname} ${oneClient.firstname}",
                            style: const TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                            ),
                        ),
                        const SizedBox(height: 5),
                        Text("${oneClient.phone}"),
                      ],),]),
                      Row(children: [
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.175,
                          height: MediaQuery.of(context).size.width * 0.05,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFC7E0F4)),
                          child: Text("${oneClient.acct_type}", style: const TextStyle(
                              fontSize: 12.0,
                              color: Color(0xFF2B88D8),
                              fontWeight: FontWeight.w500
                          )),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          width: MediaQuery.of(context).size.width * .098,
                          height: MediaQuery.of(context).size.width * .098,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: const Color(0xFFE1DFDD)
                              )
                          ),
                          child: const Icon(
                            Icons.more_horiz_sharp,
                            color: Color(0xFF605E5C),
                            size: 22.0,
                          ),
                        )
                      ],)
                    ],)
                  ],
                ),
              ),
            );
        }));
  }
}
