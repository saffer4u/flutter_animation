import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class WhatsappUniLink extends StatefulWidget {
  const WhatsappUniLink({Key? key}) : super(key: key);

  @override
  State<WhatsappUniLink> createState() => _WhatsappUniLinkState();
}

class _WhatsappUniLinkState extends State<WhatsappUniLink> {
  TextEditingController whatsappNoController = TextEditingController();
  TextEditingController messageTextController = TextEditingController();

  launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: whatsappNoController.text,
      text: messageTextController.text,
    );
    await launch('$link');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp Unilink"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: whatsappNoController,
              decoration:
                  const InputDecoration(hintText: "Enter whatsapp number..."),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 100),
            TextFormField(
              controller: messageTextController,
              decoration: const InputDecoration(hintText: "Enter message..."),
              keyboardType: TextInputType.text,
              maxLines: 5,
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: launchWhatsApp, child: Text("Launch Whatsapp"))
          ],
        ),
      ),
    );
  }
}
