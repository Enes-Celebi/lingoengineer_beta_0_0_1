import "package:flutter/material.dart";
import "package:lingoneer_beta_0_0_1/components/subject_level_card.dart";
import "package:lingoneer_beta_0_0_1/pages/progress_map_page.dart";
import "package:lingoneer_beta_0_0_1/pages/settingPage.dart";

class subjectLevelPage extends StatefulWidget {
  final int selectedCardIndex;

  const subjectLevelPage({
    super.key,
    required this.selectedCardIndex,
  });

  @override
  State<subjectLevelPage> createState() => _SubjectLevelPageState();
}

class _SubjectLevelPageState extends State<subjectLevelPage> {
  int selectedCardIndex = -1;

  void _goToProgressMapPage(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => progressMapPage(selectedCardIndex: index)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Stack(
          children: [
            Column(
              children: [
                AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Theme.of(context).colorScheme.tertiary, // COLOR
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 40,
              left: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                },
                child: Container(
                  width: 60, // Adjusted width to accommodate the border thickness
                  height: 60, // Adjusted height to accommodate the border thickness
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.background, // COLOR, // Background color of the circle
                    border: Border.all(
                      color: Theme.of(context).colorScheme.background, // COLOR, // Color of the border
                      width: 8, // Width of the border
                    ),
                  ),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primary, // COLOR,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // card 1
            SubjectLevelCard(
              title: "Subject level 1",
             imagePath: 'lib/assets/images/test/pic1.png', 
             progressValue: 0.9, 
             cardColor: Colors.green, 
             progressColor: Colors.green[800]!, 
             onTap: () {
              _goToProgressMapPage(0);
             },
            ),

            // card 1
            SubjectLevelCard(
              title: "Subject level 1",
             imagePath: 'lib/assets/images/test/pic1.png', 
             progressValue: 0.9, 
             cardColor: Colors.green, 
             progressColor: Colors.green[800]!, 
             onTap: () {
              _goToProgressMapPage(0);
             },
            ),

            // card 1
            SubjectLevelCard(
              title: "Subject level 1",
             imagePath: 'lib/assets/images/test/pic1.png', 
             progressValue: 0.9, 
             cardColor: Colors.green, 
             progressColor: Colors.green[800]!, 
             onTap: () {
              _goToProgressMapPage(0);
             },
            ),

            // card 1
            SubjectLevelCard(
              title: "Subject level 1",
             imagePath: 'lib/assets/images/test/pic1.png', 
             progressValue: 0.9, 
             cardColor: Colors.green, 
             progressColor: Colors.green[800]!, 
             onTap: () {
              _goToProgressMapPage(0);
             },
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate back to home screen
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}