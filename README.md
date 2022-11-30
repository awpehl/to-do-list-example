
# To-Do List (Flutter App)

To do list Etiqa Mobile App Developer Flutter Assessment

➤ The app’s state management, navigation & dependencies management is rely on [GetX Package](https://pub.dev/packages/get) and [Shared Preferences](https://pub.dev/packages/shared_preferences) for local storage.


## Screenshots

![New Microsoft PowerPoint Presentation](https://user-images.githubusercontent.com/76787324/204736264-1e0c84d9-5fa0-46da-81ec-3c273b2cf78f.jpg)


## Demo

- [Watch app demo on YouTube](https://youtu.be/kiAgfeQr6EQ)
- [View Demo on Flutter Web](https://etiqa-todo-list.web.app/#/list)
- [Download APK](https://api.codemagic.io/artifacts/e1c01c6b-c234-4e2b-b082-213f8c237a70/3149b754-ad6b-4b63-a857-e4f38683660b/app-release.apk)


## Key Features

 - Create To-Do
 - Edit To-Do
 - Delete To-Do
 - Mark To-Do as Complete 

Simple validations:
- Title must not be empty
- Start date must be smaller than or equal to end date
- End Date must be larger than or equal to start date
 


## Project Architecture
- [GetX Pattern by kauemurakami](https://github.com/kauemurakami/getx_pattern)
- Project Structure:
```bash
├── lib
│   ├── data
│   │    └── local_storage
│   │    └── models
│   ├── modules
│   │    └── to_do_list
│   │         └── bindings
│   │         └── controllers
│   │         └── views
│   ├── routes
│   └── utils
│   └── widgets 
│     
└── test
```
## Unit Test

- Simple unit tests are created
- To execute all the unit tests, run
```bash
flutter test   
```
## Continuos Integration
- A simple CI/CD was setup with [CodeMagic](https://codemagic.io). New build will be triggered by every new push to main branch for this repository. 
![cic](https://user-images.githubusercontent.com/76787324/204739065-321debef-73af-4d76-81de-2e331ad02c93.png)
![codemagic](https://user-images.githubusercontent.com/76787324/204745635-39feb15a-03b4-4dd8-9797-e1d240d373d5.png)


## Setup Project
- Clone repository
```bash
git clone https://github.com/weeyc/to-do-list.git  
```

- To run the app, simply write
```bash
flutter pub get  
```
```bash
flutter run 
```
