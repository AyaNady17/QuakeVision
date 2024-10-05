import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/2k_stars.jpg"), // Path to your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AboutQuikVisionHeaderWithIcon(),
                  const SizedBox(height: 8),
                  const Text(
                    'Read about our project',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 32),
                  _buildCard(
                      '''In a world characterized by rapid advancements in space exploration and scientific research, earthquakes remain a geological phenomenon that piques the curiosity of scientists and presents one of the significant challenges for space missions.
      '''),
                  const SizedBox(height: 32),
                  _buildCard(
                      '''This is where our project, QuakeVision, comes into play. We combine science and technology to provide an innovative solution aimed at enhancing safety and efficiency in space exploration operations. By analyzing seismic data from reliable sources, we offer investors and researchers a valuable tool that enables them to identify patterns and trends in seismic activity '''),
                  const SizedBox(height: 32),
                  _buildCard('''
our solution to the challenges of planetary seismology leverages machine learning to filter seismic data from missions like Apollo and the Mars InSight Lander. Instead of transmitting all collected data, our approach uses advanced algorithms to distinguish meaningful seismic signals from background noise, significantly improving data efficiency and conserving power for long-duration missions.
Additionally, we are developing an interactive web application that visualizes this filtered quake data across Earth, Mars, and the Moon. This 3D interface will provide users with an engaging way to explore seismic activity, enhancing public understanding and education. By combining intelligent data analysis with informative visualization, this project aims to transform how we interpret and present planetary seismic data.'''),
                  const SizedBox(height: 22),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50.0,
                    ), // Adjust the value as needed
                    child: Divider(color: Colors.white54, thickness: 0),
                  ),
                  const SizedBox(height: 50),
                  const LauncherLinks(),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String content) {
    return Card(
      color: Colors.black.withOpacity(1),
      elevation: 0.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        content,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 18,
          height: 1.5,
        ),
      ),
    );
  }
}

class LauncherLinks extends StatelessWidget {
  const LauncherLinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // NASA Space Apps Challenge Link
            _buildLauncherLink(
              text: 'NASA Space Apps Challenge',
              url: 'https://www.spaceappschallenge.org/',
            ),
            // Apollo Seismic Event Catalog Link
            _buildLauncherLink(
              text: "Apollo Seismic Event Catalog (NASA's PDS)",
              url: 'https://pds-geosciences.wustl.edu/',
            ),
            // Lunar Seismic Events Info Link
            _buildLauncherLink(
              text: 'Read more about Quake Vision',
              url: 'https://www.example.com/', // Update with real link
            ),
          ],
        ),
        const SizedBox(height: 10),
        Lottie.asset(
          'assets/nasa_blue_logo.json',
          repeat: true,
          reverse: true,
          backgroundLoading: true,
          height: 75,
          width: 75,
        ),
      ],
    );
  }
}

class AboutQuikVisionHeaderWithIcon extends StatelessWidget {
  const AboutQuikVisionHeaderWithIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About Quake Vision',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black45,
                  offset: Offset(3, 3),
                ),
              ],
            ),
          ),
          const Spacer(),
          Lottie.asset(
            'assets/about_us.json',
            repeat: true,
            reverse: true,
            backgroundLoading: true,
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}

// Helper function to build the clickable link
Widget _buildLauncherLink({required String text, required String url}) {
  return InkWell(
    onTap: () async {
      Uri parsedUrl = Uri.parse(url);
      if (!await launchUrl(parsedUrl)) {
        throw Exception('Could not launch $url');
      } else {
        throw 'Could not launch $url';
      }
    },
    child: Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            decoration: TextDecoration.underline,
          ),
        ),
        const SizedBox(width: 5),
        const Icon(
          Icons.open_in_new,
          color: Colors.white,
          size: 16,
        ),
      ],
    ),
  );
}
