# 📝 Simple Notes App
A lightweight and aesthetically pleasing Flutter-based mobile application that allows users to create, save, and delete personal notes. This app uses `shared_preferences` for local storage, eliminating the need for a database or internet connection — making it fast, minimal, and user-friendly.


# 📱 Features
- ✨ Clean and light UI with customizable background color
- 📝 Add, view, and delete notes
- 💾 Locally stores data using `shared_preferences`
- 🚫 Works offline – no database or network required
- 📦 APK ready for Android devices


# 🌈 Aesthetic Touch
The app uses soft pastel colors (like rose blush or cream white) to make the note-taking experience **visually relaxing and organized**, especially for users who prefer simple and beautiful UI.


## 🛠 Tools & Technologies Used
| Tool | Purpose |
|------|---------|
| Flutter | UI framework for cross-platform mobile apps |
| Dart | Programming language used with Flutter |
| shared_preferences | Lightweight key-value storage |
| Android Studio / VS Code | Development environment |
| Git & GitHub | Version control and project hosting |


# 📂 Project Structure



simple\_notes\_app/
├── lib/
│   └── main.dart        # Main logic and UI
├── android/             # Android native code
├── pubspec.yaml         # App dependencies
├── build/               # (Ignored in Git) Generated build files
    └── SimpleNotesApp.apk      # (Not pushed)Final built APK

`

# 🚀 How to Run the Project Locally
1. Clone the repository
   bash
   git clone https://github.com/your-username/simple-notes-app.git
   cd simple-notes-app
`
2. Get dependencies

   bash
   flutter pub get
   
3. Run the app (Chrome or emulator)

   bash
   flutter run -d chrome
   
4. Build APK for Android

   bash
   flutter build apk --release
   

# 📱 How to Install APK

1. Locate `SimpleNotesApp.apk` in:

   
   build/app/outputs/flutter-apk/
   

2. Send it to your phone via USB, Drive, or Email

3. Enable “Install from Unknown Sources” on your phone

4. Tap to install and enjoy!


# 📌 Future Enhancements

* Add note editing functionality ✍
* Add dark mode toggle 🌙
* Sort/filter notes by date or title 📋
* Optional cloud sync using Firebase or SQLite ☁


# 🙌 Author

Meghna Pradeep
Student at Muthoot Institute of Technology and Science
[LinkedIn](https://www.linkedin.com/in/meghna-pradeep-901982181)


# ⚖ License

This project is licensed under the MIT License – feel free to use, modify, and share with attribution.

text
MIT License

Copyright (c) 2025 Meghna Pradeep

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:  
...
```

> 📎 [Read full MIT license](https://opensource.org/licenses/MIT)


# 💬 Conclusion

This project demonstrates how even beginners can build a clean, functional mobile app using Flutter and Dart — without needing databases or servers. It’s a great foundation for those looking to explore Flutter development, local data storage, and clean UI principles.
