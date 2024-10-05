
## Overview

This interactive seismic data visualization application is designed to provide an intuitive interface for exploring filtered seismic data from Earth, Mars, and the Moon in a 3D interactive experience. The app utilizes core technologies like Flutter for cross-platform development, flutter_globe for 3D rendering, and Firebase Hosting for deployment and scalability.
<img width="1440" alt="Screenshot 2024-10-04 at 10 07 46 AM" src="https://github.com/user-attachments/assets/48846351-4423-4ec7-9eb2-cc6c48899444">



## Features

### Frontend Development with Flutter
- **User-Friendly Navigation**: Designed for ease of navigation and data accessibility.
- **Key Functionalities**:
  - Select planetary bodies (Earth, Mars, Moon).
  - Filter seismic data based on user preferences.
  - Explore temporal and spatial data points.
<img width="1440" alt="Screenshot 2024-10-04 at 9 52 31 AM" src="https://github.com/user-attachments/assets/3cd2094a-2a05-4e92-a3e0-b3c0fc113e33">

### 3D Visualization with flutter_globe
- **Interactive Globe**: Rotatable and zoomable globe that users can manipulate via touch/mouse.
  - **Customization**: Features customized textures and overlays to accurately illustrate seismic events.
- **Seismic Event Markers**: Dynamic markers that represent different parameters (color, size, animation) for quake magnitude and depth.
- **Real-Time Data Filtering**: Visualize earthquakes above a certain magnitude or within a specified date range.

### Deployment and Scalability with Firebase Hosting
- Ensures global accessibility and reliable performance for the web application.

## Application Workflow

Upon accessing the website, users are greeted with a home screen featuring a navigation bar with options for "Explore," "About," and "Contact Us." 

### Explore Screen
- Serves as the main viewer for Mars, the Moon, and Earth, initially without plotted seismic events.
- Users can apply filters based on their preferences.
![Screenshot_1728054510](https://github.com/user-attachments/assets/e0c5fb5e-e0a4-4bba-aad5-88e8dd9a9a2e)

  
### Visualization Options
- **NASA Seismic Data**: The app utilizes NASA seismic data with various visualization options:
  - **Points**: Displays all seismic stations.
  - **Dropdown List**: Contains seismic activities categorized by years and specific days.
  - **Time Series Plots**: Visualizes seismic activity over time.
  - **Signals Plots**: Displays detailed waveform data of seismic events.

## Technologies Used

- **Flutter**: For cross-platform mobile and web development.
- **Firebase**: For hosting and backend services.
- **flutter_globe**: For 3D globe visualizations.

## Installation

### Prerequisites

- Flutter SDK (version 2.0 or later)
- Dart SDK (version 2.12 or later)
- Firebase account and project setup

### Steps to Run the App

1. Clone the repository:
   ```bash
   git clone https://github.com/AyaNady17/QuakeVision.git
   cdQuakeVision
