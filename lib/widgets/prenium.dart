import 'package:flutter/material.dart';
import 'package:task_management/widgets/constant.dart';

class GoPrenium extends StatefulWidget {
  const GoPrenium({super.key});

  @override
  State<GoPrenium> createState() => _GoPreniumState();
}

class _GoPreniumState extends State<GoPrenium> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(he * 0.004),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(he * 0.02),
            gradient: const LinearGradient(
              colors: [
                Color(0xffFDC830),
                Color(0xffF37335),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(he * 0.02),
              color: Colors.grey[300],
            ),
            padding: EdgeInsets.all(he * 0.012),
            child: Row(
              children: [
                Container(
                  height: he * 0.05,
                  width: he * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(he * 0.02),
                    color: Colors.grey[300],
                  ),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Color.fromARGB(255, 209, 187, 187).withOpacity(0.6),
                        BlendMode.srcIn),
                    child: const Icon(
                      Icons.workspace_premium_outlined,
                      size: 30,
                      color: MyThemeColor.textColor,
                    ),
                  ),
                ),
                SizedBox(width: he * 0.015),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Go Prenium',
                      style: TextStyle(
                        color: Color.fromARGB(255, 22, 23, 22),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Get access to all features \n and unlimited downloads',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Expanded(child: Container()),
                IconButton(
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color.fromARGB(255, 113, 120, 113),
                    size: 30,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
