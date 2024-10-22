# Flutter Timeline Widget

A simple and customizable timeline widget created using Flutter. This project showcases a timeline for tracking events such as order status updates.

## Features

- Customizable timeline events
- Past and upcoming event distinction
- Material 3 design
- Interactive event cards with icons
- Smooth scrolling experience with `ListView`

## Preview
<img src="https://github.com/user-attachments/assets/7b667841-e2f8-458b-aef9-0e9bd039d941" alt="First Screenshot" style="width: 200px; height: auto; margin-right: 10px;">

## Project Structure

- `main.dart`: The entry point of the app.
- `my_timeline_tile.dart`: A custom component for rendering individual timeline tiles.
- `event_card.dart`: A widget to display event details.

## Dependencies

This project uses the following dependencies:

- `flutter`: The Flutter framework.
- `cupertino_icons`: iOS-style icons for Flutter.
- `timeline_tile`: For creating timeline views.

## Usage

In your code, you can add new timeline tiles by modifying the `ListView` inside `HomePage`. Each `MyTimelineTile` widget can be customized for past and future events.

```dart
MyTimelineTile(
  isFirst: true,
  isLast: false,
  isPast: true,
  eventCard: Text('ORDER PLACED', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
),
```

### Customization

You can change the timeline color, icon, and event card text by updating the parameters in the `MyTimelineTile` and `EventCard` widgets.

## Getting Started

To run this project on your local machine:

1. Clone the repository and open it in your IDE:
   ```bash
   git clone https://github.com/Bhavyansh03-tech/Timer.git
   ```
2. Run the project on an emulator or a physical device.
   ```bash
   flutter run
   ```
   
## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Create a new Pull Request.

## Contact

For questions or feedback, please contact [@Bhavyansh03-tech](https://github.com/Bhavyansh03-tech) on GitHub or connect with me on [LinkedIn](https://www.linkedin.com/in/bhavyansh03/).

---
