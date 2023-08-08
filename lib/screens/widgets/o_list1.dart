import 'package:eso_e/screens/widgets/o_list2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/utils.dart';

class OList1 extends StatefulWidget {
  const OList1({Key? key}) : super(key: key);

  @override
  State<OList1> createState() => _OList1State();
}

class _OList1State extends State<OList1> {
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * .3,
        padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
        margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 7.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white
        ),
        child: Column(
          children: [
            Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .18,
                    height: MediaQuery.of(context).size.width * .06,
                    decoration: BoxDecoration(
                        color: const Color(0x222D88D8),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Center(
                      child: Text("Open",
                          style: TextStyle(
                            color: Color(0xFF2D88D8),
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
                          )),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    width: MediaQuery.of(context).size.width * .06,
                    height: MediaQuery.of(context).size.width * .06,
                    decoration:  const BoxDecoration(
                        color:  Color(0xFFC70505),
                        // color: Utils.loans > 0
                        //     ? const Color(0xFFC70505)
                        //     : const Color(0xFF2B88D8),
                        shape: BoxShape.circle),
                    child: Utils.loans > 0
                        ? Center(child: Text("${Utils.loans > 99 ? "99+" : Utils.loans}",
                      style: const TextStyle(
                          fontSize: 10, color: Colors.white),))
                        : const Icon(
                      Icons.arrow_forward_ios,
                      size: 9,
                      color: Color(0xFF8A8886),
                    ),),
                  const Expanded(child: SizedBox(width: 10.0)),
                  Container(
                    width: MediaQuery.of(context).size.width * .18,
                    height: MediaQuery.of(context).size.width * .06,
                    decoration: BoxDecoration(
                        color: const Color(0xFFE1DFDD),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Center(
                      child: Text("#22344",
                          style: TextStyle(
                            color: Color(0xFF757575),
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,)),),),
                ]),
            const Divider(
              color: Color(0xFFE1DFDD),
              thickness: 1.5,),
            const Text(
              "Olist1 long text long text long text "
                  "long text long text long text "
                  "long text long text long text",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 5.0),
            Row(
              children: [
                SvgPicture.asset('asset/svg_icons/date_icon.svg',
                  color: Colors.grey[900],
                  width: 17,
                  height: 17,
                ),
                const SizedBox(width: 3.0),
                Text("date date date",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12.0
                  ),),
                const SizedBox(width: 10.0),
                SvgPicture.asset('asset/svg_icons/time_circle.svg',
                  color: Colors.grey,
                  width: 17,
                  height: 17,
                ),
                const SizedBox(width: 3.0),
                Text("22:22 PM",
                  style: TextStyle(
                      fontFamily: 'Jost',
                      color: Colors.grey[500],
                      fontSize: 10.0
                  ),),
              ],
            )
          ],
        ),
    ),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height,
          //   child:
          //   ListView(
          //     children: [
          //       Container(
          //         width: MediaQuery.of(context).size.width,
          //         height: MediaQuery.of(context).size.width * .3,
          //         padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
          //         margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 7.0),
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(12.0),
          //             color: Colors.white
          //         ),
          //         child: Column(
          //           children: [
          //             Row(
          //                 children: [
          //                   Container(
          //                     width: MediaQuery.of(context).size.width * .18,
          //                     height: MediaQuery.of(context).size.width * .06,
          //                     decoration: BoxDecoration(
          //                         color: const Color(0xFFDFF6DD),
          //                         borderRadius: BorderRadius.circular(12)),
          //                     child: const Center(
          //                       child: Text("OList1",
          //                           style: TextStyle(
          //                             color: Color(0xFF107C10),
          //                             fontWeight: FontWeight.w500,
          //                             fontSize: 12.0,
          //                           )),
          //                     ),
          //                   ),
          //                   const SizedBox(width: 10.0),
          //                   const Expanded(child: SizedBox(width: 10.0)),
          //                   Container(
          //                     width: MediaQuery.of(context).size.width * .18,
          //                     height: MediaQuery.of(context).size.width * .06,
          //                     decoration: BoxDecoration(
          //                         color: const Color(0xFFE1DFDD),
          //                         borderRadius: BorderRadius.circular(12)
          //                     ),
          //                     child: const Center(
          //                       child: Text("#22344",
          //                           style: TextStyle(
          //                             color: Color(0xFF757575),
          //                             fontWeight: FontWeight.w500,
          //                             fontSize: 12.0,)),),),
          //                 ]),
          //             const Divider(
          //               color: Color(0xFFE1DFDD),
          //               thickness: 1.5,),
          //             const Text(
          //               "long text long text long text "
          //                   "long text long text long text "
          //                   "long text long text long text",
          //               maxLines: 1,
          //               overflow: TextOverflow.ellipsis,
          //             ),
          //             const SizedBox(height: 5.0),
          //             Row(
          //               children: [
          //                 const Icon(
          //                   Icons.calendar_month,
          //                   color: Colors.grey,
          //                   size: 15.0,
          //                 ),
          //                 const SizedBox(width: 3.0),
          //                 Text("date date date",
          //                   style: TextStyle(
          //                       color: Colors.grey[500],
          //                       fontSize: 12.0
          //                   ),),
          //                 const SizedBox(width: 10.0),
          //                 const Icon(
          //                   Icons.access_time_filled_outlined,
          //                   color: Colors.grey,
          //                   size: 17.0,),
          //                 const SizedBox(width: 3.0),
          //                 Text("22:22 PM",
          //                   style: TextStyle(
          //                       fontFamily: 'Jost',
          //                       color: Colors.grey[500],
          //                       fontSize: 10.0
          //                   ),),
          //               ],
          //             )
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // )
        ]
      );



  }
}
