import 'package:flutter/material.dart';
import 'package:flutter_earth_globe/globe_coordinates.dart';
import 'package:flutter_earth_globe/point.dart';
import 'package:url_launcher/url_launcher.dart';

final pointStyle =
    const PointStyle(color: Colors.red, size: 25); // Increased size
bool isLabelVisible = false;

// Utility function to launch URLs
void _launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {}
}

List<Point> getMoonQuakeStations(BuildContext context) {
  return [
    Point(
      id: '1',
      coordinates: const GlobeCoordinates(3.01239, 23.42157), // Apollo 12
      label: 'Apollo 12',
      style: pointStyle,
      isLabelVisible: true,
      labelBuilder: labelBuilder,
      onTap: () {
        _launchURL(
            'https://nssdc.gsfc.nasa.gov/nmc/spacecraft/display.action?id=1969-059A'); // Apollo 12 NASA resource
      },
      onHover: () {
        isLabelVisible = true;
      },
    ),
    Point(
      id: '2',
      coordinates: const GlobeCoordinates(26.0, 3.0), // Apollo 15
      label: 'Apollo 15',
      isLabelVisible: isLabelVisible,
      labelBuilder: labelBuilder,
      style: pointStyle,
      onTap: () {
        _launchURL(
            'https://nssdc.gsfc.nasa.gov/nmc/spacecraft/display.action?id=1971-063A'); // Apollo 15 NASA resource
      },
          onHover: () {
        isLabelVisible = true;
      },
    ),
  ];
}

Widget? labelBuilder(context, point, isHovered, _) {
  return Visibility(
    visible: isHovered,
    child: Text(
      point.label!,
      style: const TextStyle(color: Colors.white),
    ),
  );
}

List<Point> getMarsQuakeStations(BuildContext context) {
  return [
    Point(
      id: '3',
      coordinates: const GlobeCoordinates(4.5, 135.0), // InSight
      label: 'Mars Insight Mission',
      style: const PointStyle(color: Colors.lime, size: 25), // Increased size
      labelBuilder: labelBuilder,
      onTap: () {
        _launchURL(
            'https://mars.nasa.gov/insight/'); // Mars InSight NASA resource
      },
    ),
  ];
}

void _showDetailsDialog(BuildContext context, String title, String content) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(content),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
      ),
      elevation: 2,
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        ),
      ],
    ),
  );
}

List<Point> getEarthQuakeStations(BuildContext context) {
  return [
    Point(
      id: '1',
      coordinates: const GlobeCoordinates(40.6892, -74.0445), // New York, USA
      label: 'New York Seismic Station',
      style: const PointStyle(color: Colors.red, size: 25), // Increased size
      labelBuilder: labelBuilder,
      onTap: () {
        _launchURL(
            'https://earthquake.usgs.gov/monitoring/operations/stations/US/NY'); // New York seismic station
      },
    ),
    Point(
      id: '2',
      coordinates: const GlobeCoordinates(35.6895, 139.6917), // Tokyo, Japan
      label: 'Tokyo Seismic Station',
      style: const PointStyle(color: Colors.blue, size: 25), // Increased size
      labelBuilder: labelBuilder,
      onTap: () {
        _launchURL(
            'https://earthquake.usgs.gov/monitoring/operations/stations/JP/TOK'); // Tokyo seismic station
      },
    ),
    Point(
      id: '3',
      coordinates:
          const GlobeCoordinates(-33.8688, 151.2093), // Sydney, Australia
      label: 'Sydney Seismic Station',
      style: const PointStyle(color: Colors.green, size: 25), // Increased size
      labelBuilder: labelBuilder,
      onTap: () {
        _launchURL(
            'https://earthquake.usgs.gov/monitoring/operations/stations/AU/SYD'); // Sydney seismic station
      },
    ),
    Point(
      id: '4',
      coordinates:
          const GlobeCoordinates(-23.5505, -46.6333), // São Paulo, Brazil
      label: 'São Paulo Seismic Station',
      style: const PointStyle(color: Colors.orange, size: 25), // Increased size
      labelBuilder: labelBuilder,
      onTap: () {
        _launchURL(
            'https://earthquake.usgs.gov/monitoring/operations/stations/BR/SPA'); // São Paulo seismic station
      },
    ),
    Point(
      id: '5',
      coordinates: const GlobeCoordinates(51.5074, -0.1278), // London, UK
      label: 'London Seismic Station',
      style: const PointStyle(color: Colors.purple, size: 25), // Increased size
      labelBuilder: labelBuilder,
      onTap: () {
        _launchURL(
            'https://earthquake.usgs.gov/monitoring/operations/stations/UK/LON'); // London seismic station
      },
    ),
  ];
}
