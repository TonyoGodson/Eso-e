import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/utils.dart';

class OList2 extends StatefulWidget {
  const OList2({Key? key}) : super(key: key);

  @override
  State<OList2> createState() => _OList2State();
}

class _OList2State extends State<OList2> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * .18,
                  height: MediaQuery
                      .of(context)
                      .size
                      .width * .06,
                  decoration: BoxDecoration(
                      color: const Color(0xFFDFF6DD),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: const Center(
                    child: Text("Resolved",
                        style: TextStyle(
                          color: Color(0xFF107C10),
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                        )),
                  ),
                ),
                const SizedBox(width: 10.0),
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
            "long text long text long text "
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
                height: 17,),
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
                height: 17,),
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
    );
  }
}
