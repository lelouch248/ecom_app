# ecom_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

ecom_app is a Flutter-based mobile application for an e-commerce platform. It allows users to browse and shop for various products, view deals, and apply filters to refine their search. This repository contains the source code for the ecom_app mobile app.

## Overview

The ecom_app is built using the Flutter framework, which enables the development of cross-platform applications for Android and iOS. The app is designed to provide a seamless and intuitive shopping experience for users. It includes the following main features:

1. Home Page: Displays a list of top brands, a carousel slider with featured products, and a "Shop By" section to explore different categories.

2. Deals Page: Shows the best deals available near the user's location.

3. Search: Provides a search bar to search for specific products, and the results are displayed on a separate screen.

4. Filters: Allows users to apply filters such as brand, condition, storage, and RAM to refine their product search.

## Memory Management

To ensure efficient memory management and performance, the ecom_app follows the best practices recommended by Flutter:

1. State Management: The app uses Flutter's built-in state management features, such as `setState`, `Provider`, or `Bloc`, to handle and update the UI state efficiently.

2. Image Caching: Flutter automatically caches images that are fetched from the network using `Image.network`. This reduces the overhead of loading images each time they are displayed.

3. Widget Lifecycle: The app leverages the widget lifecycle methods, such as `initState`, `dispose`, etc., to properly manage resources and avoid memory leaks.

4. Code Splitting: Large libraries and resources are loaded only when needed, thanks to Flutter's code splitting mechanism. This helps in reducing the initial app size and loading time.

## How to Run

To run the ecom_app on your local machine, follow these steps:

1. Ensure you have Flutter installed on your system. If not, you can download and install it from the official Flutter website: [Flutter Install Guide](https://flutter.dev/docs/get-started/install)

2. Clone this repository to your local machine using Git: git clone https://github.com/lelouch248/ecom_app.git

3. Open the project in your favorite code editor (e.g., Visual Studio Code, Android Studio).

4. Connect a physical device or start an emulator.

5. Use the following command in the terminal to install dependencies: flutter pub get

6. Once the dependencies are installed, run the app with the following command: flutter run

The app should now launch on your device or emulator, allowing you to explore the e-commerce platform.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.






