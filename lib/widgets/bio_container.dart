import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BioContainer extends StatelessWidget {
  const BioContainer({
    Key? key,
    this.leadingIcon,
    required this.title,
    required this.subTitle,
    this.trailingIcon,
    this.onPressed,
  }) : super(key: key);

  final IconData? leadingIcon;
  final String title;
  final String subTitle;
  final IconData? trailingIcon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade300, Colors.blue.shade800],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: ListTile(
        leading: Icon(leadingIcon),
        title: Text(
          title,
          style: GoogleFonts.cairo(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subTitle,
          style: GoogleFonts.cairo(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        trailing: IconButton(
          onPressed: onPressed,
          icon: Icon(trailingIcon),
        ),
      ),
    );
  }
}
