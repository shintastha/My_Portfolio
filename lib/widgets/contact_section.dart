import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/constants/sns_links.dart';
import 'package:my_portfolio/widgets/custom_text_field.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          // title
          const Text(
            "Get in Touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),

          const SizedBox(
            height: 50,
          ),

          ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 700, maxHeight: 100),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth >= kMinDesktopWidth) {
                    return buildnameEmailFieldDesktop();
                  }

                  // else
                  else {
                    return buildnameEmailFieldMobile();
                  }
                },
              )),
          const SizedBox(
            height: 15,
          ),

          // message
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: CustomTextField(
              hintText: "Your message",
              maxLines: 16,
            ),
          ),

          SizedBox(
            height: 20,
          ),

          // send button
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Get in touch",
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.yellowPrimary,
                  ),
                )),
          ),

          SizedBox(
            height: 30,
          ),

          ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 300),
              child: const Divider()),

          SizedBox(
            height: 15,
          ),

          // SNS icon button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.github]);
                },
                child: Image.asset(
                  "github.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.linkedIn]);
                },
                child: Image.asset(
                  "linkedin.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.facebook]);
                },
                child: Image.asset(
                  "facebook.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.instagram]);
                },
                child: Image.asset(
                  "instagram.png",
                  width: 28,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row buildnameEmailFieldDesktop() {
    return Row(
      children: [
        // name
        Flexible(
          child: CustomTextField(
            hintText: "Your name",
          ),
        ),
        const SizedBox(
          width: 15,
        ),

        // email
        Flexible(
          child: CustomTextField(
            hintText: "Your email",
          ),
        ),
      ],
    );
  }

  Column buildnameEmailFieldMobile() {
    return Column(
      children: [
        // name
        Flexible(
          child: CustomTextField(
            hintText: "Your name",
          ),
        ),
        const SizedBox(
          height: 15,
        ),

        // email
        Flexible(
          child: CustomTextField(
            hintText: "Your email",
          ),
        ),
      ],
    );
  }
}
