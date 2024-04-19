import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'package:my_portfolio/widgets/project_card.dart';

class ProjectSections extends StatelessWidget {
  const ProjectSections({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          // Projects title
          Text(
            "Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          SizedBox(
            height: 50,
          ),

          // Projects cards
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < myProjectUtils.length; i++)
                  ProjectCardWidget(project: myProjectUtils[i]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
