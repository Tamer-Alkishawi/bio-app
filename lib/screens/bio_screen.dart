import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/bio_container.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // automaticallyImplyLeading: true,
        // leading: IconButton(
        //   color: Colors.black,
        //   icon: Icon(Icons.arrow_back_ios),
        //   onPressed: () => Navigator.pop(context),
        // ),
        title: Text(
          'BIO',
          style: GoogleFonts.cairo(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.shade900,
              Colors.blue.shade100,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/R.4b24dbb8b5ac3d87c4b3f28328278e8e?rik=NBT9T8AK7KwHUQ&riu=http%3a%2f%2fd2a3o6pzho379u.cloudfront.net%2f115088.jpg&ehk=fYT9z1Pf2t50PZI8lm4Ie2GEWxEZmygIW1RzuJbBBB0%3d&risl=&pid=ImgRaw&r=0'),
            ),
            Text(
              'Tamer Alkishawi',
              style: GoogleFonts.cairo(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.black,
              ),
            ),
            Text(
              'CV',
              style: GoogleFonts.cairo(
                height: 1,
                letterSpacing: 7,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.black45,
              indent: 30,
              endIndent: 30,
              height: 50,
            ),
            BioContainer(
              title: 'Email',
              subTitle: 'tamerkishawi@gmail.com',
              leadingIcon: Icons.email,
              trailingIcon: Icons.send,
              onPressed: () {
                print('Email');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Sending Email...',
                      style: GoogleFonts.cairo(
                        color: Colors.blue.shade200,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        letterSpacing: 1,
                      ),
                    ),
                    duration: const Duration(
                      seconds: 3,
                    ),
                    dismissDirection: DismissDirection.horizontal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    behavior: SnackBarBehavior.floating,
                    // margin: EdgeInsets.symmetric(horizontal: 20),
                    width: 400,
                    elevation: 10,
                    action: SnackBarAction(
                      textColor: Colors.blue.shade200,
                      onPressed: () {
                        const Text('UNDO');
                      },
                      label: ('UNDO'),
                    ),
                    backgroundColor: Colors.blue.shade800,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            BioContainer(
              title: 'Mobile Number',
              subTitle: '+097-056-7720-147',
              leadingIcon: Icons.phone_android,
              trailingIcon: Icons.call,
              onPressed: () {
                print('Mobile Number');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Calling Mobile...',
                      style: GoogleFonts.cairo(
                        color: Colors.blue.shade200,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        letterSpacing: 1,
                      ),
                    ),
                    duration: const Duration(
                      seconds: 3,
                    ),
                    dismissDirection: DismissDirection.horizontal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    behavior: SnackBarBehavior.floating,
                    // margin: EdgeInsets.symmetric(horizontal: 20),
                    width: 400,
                    elevation: 10,
                    action: SnackBarAction(
                      textColor: Colors.blue.shade200,
                      onPressed: () {
                        const Text('UNDO');
                      },
                      label: ('UNDO'),
                    ),
                    backgroundColor: Colors.blue.shade800,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            BioContainer(
              title: 'Adress',
              subTitle: 'Gaza - Aljalaa Street',
              leadingIcon: Icons.home,
              trailingIcon: Icons.location_pin,
              onPressed: () {
                print('Adress');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Maping Adress...',
                      style: GoogleFonts.cairo(
                        color: Colors.blue.shade200,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        letterSpacing: 1,
                      ),
                    ),
                    duration: const Duration(
                      seconds: 3,
                    ),
                    dismissDirection: DismissDirection.horizontal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    behavior: SnackBarBehavior.floating,
                    // margin: EdgeInsets.symmetric(horizontal: 20),
                    width: 400,
                    elevation: 10,
                    action: SnackBarAction(
                      textColor: Colors.blue.shade200,
                      onPressed: () {
                        const Text('UNDO');
                      },
                      label: ('UNDO'),
                    ),
                    backgroundColor: Colors.blue.shade800,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            BioContainer(
              title: 'Gender',
              subTitle: 'Male',
              leadingIcon: Icons.man,
              trailingIcon: Icons.male,
              onPressed: () {
                print('Gender');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Applying Gender...',
                      style: GoogleFonts.cairo(
                        color: Colors.blue.shade200,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        letterSpacing: 1,
                      ),
                    ),
                    duration: const Duration(
                      seconds: 3,
                    ),
                    dismissDirection: DismissDirection.horizontal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    behavior: SnackBarBehavior.floating,
                    // margin: EdgeInsets.symmetric(horizontal: 20),
                    width: 400,
                    elevation: 10,
                    action: SnackBarAction(
                      textColor: Colors.blue.shade200,
                      onPressed: () {
                        const Text('UNDO');
                      },
                      label: ('UNDO'),
                    ),
                    backgroundColor: Colors.blue.shade800,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
