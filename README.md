# ObeyPay

A Flutter matchmaking app where users pick a match based on availability to pay money. The app is devided into golddiggers and paypigs. The point of the whole app is to connect both sides of a findom experience in a safe and structured space. 

## Features

- User Log Selection – Choose between signing up as a trubutor (paypig) or a royal (golddigger). Based on taht information the apps UI will change a little. 
- Matchmaking Mechanics – Matchmaking based on payment limits and willingness to just talk, send pictures etc. 
- Profile System – Shape your profile to show the most from yourself.
- In-app Currency – Use in app currency to feel the thrill without breaking the bank.
- Chatting & Sending Gifts Options – Get in touch with your matches trough the apps chat. Send gifts, images and more to make the most out of your experience. 

## Getting Started

### Prerequisites

- Flutter SDK (3.7.0 or higher)
- Xcode (for iOS)
- Android Studio (for Android)
- Physical or virtual device (iOS or Android)

### Installation

1. Clone the repository
bash
git clone https://github.com/MaxDelissen/ObeyPay.git
cd ObeyPay

2. Install dependencies
bash
flutter pub get

3. iOS Setup
bash
cd ios
pod install
cd ..

4. Run the app
bash
flutter run

### Platform-Specific Setup

#### iOS
1. Open Xcode:
bash
cd ios
open Runner.xcworkspace

2. In Xcode:
- Select "Runner" in the project navigator
- Select "Runner" target
- Go to "Signing & Capabilities"
- Check "Automatically manage signing"
- Select your development team
- Update bundle identifier if needed

## Project Structure

lib/
├── main.dart
├── screens/
│   ├── base_page.dart     
│   ├── chats_page.dart
│   ├── dom_profile_page.dart   
│   ├── home_page.dart
│   ├── store_page.dart      
│   └── sub_profile_page.dart      
├── widgets/
│   ├── home_page_widgets/
│   │   ├── certified_badge.dart         
│   │   ├── money_slider.dart  
│   │   ├── user card.dart     
│   │   └── tinder_card_stack.dart        
│   └── /
│       ├── cart_widget.dart         
│       ├── chat_widget.dart     
│       ├── profile_card_pig.dart       
│       ├── profile_card_royal.dart       
│       ├── text_styles.dart          
│       └── nav_bar.dart     
└── utils/  
    ├── notificationService.dart  
    ├──  demo_users.dart
    └── objects/
        ├──  user.dart

! Not to forget the assets folder and all of its subfilders: fonts, icons, images, sounds.

## Dependencies

  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  flutter_local_notifications: ^19.0.0
  flutter_svg: ^2.0.17
  flutter_card_swiper: ^7.0.2
  audioplayers: ^6.4.0

## Building for Release

### Android
bash
flutter build apk --release

### iOS
bash
flutter build ios --release
cd ios
xcodebuild -workspace Runner.xcworkspace -scheme Runner -configuration Release archive

## Troubleshooting

### Common Issues

1. **Sensor Issues**
   - Ensure device permissions are granted
   - Check device motion sensor functionality

2. **Build Errors**
   - Run `flutter clean`
   - Delete build folders
   - Re-run `flutter pub get`

3. **iOS Signing Issues**
   - Verify Apple Developer account
   - Check provisioning profiles
   - Update bundle identifier

## Contributing
Not accepting contributions.

## Acknowledgments
- Flutter team for the framework

## Support
If support is needed, you can contact Nikol Galabobva via E-mail: 528614@student.fontys.nl.

## Roadmap
No future releases.

## Author
Nikol Galabova
Max Delissen
