
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/config.dart';

class CustomAppbar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, this.apptitle, this.route, this.icon, this.actions,});

  @override
  Size get preferredSize =>const  Size.fromHeight(60);

  final String? apptitle;
  final String? route;
  final FaIcon? icon;
  final List<Widget>? actions;

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: true,
      elevation: 0,
      title: Text(
        widget.apptitle!,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black
        ),
        ),
        leading: widget.icon  != null ? Container(
          margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(19),
            color: Config.primaryColor,
             ),
             child: IconButton(
              icon: widget.icon!, 
              onPressed: () { 

                if(widget.route  !=null) {
                  Navigator.of(context).pushNamed(widget.route!);
                } else  {
                  Navigator.of(context).pop();
                }
              },
              iconSize: 16,
              color: Colors.white,
              ),
        ) : null,
        actions: widget.actions ?? null,
        
    );
  }
}