
# react-native-react-native-latex

## Getting started

`$ npm install react-native-react-native-latex --save`

### Mostly automatic installation

`$ react-native link react-native-react-native-latex`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-react-native-latex` and add `RNReactNativeLatex.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNReactNativeLatex.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNReactNativeLatexPackage;` to the imports at the top of the file
  - Add `new RNReactNativeLatexPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-react-native-latex'
  	project(':react-native-react-native-latex').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-react-native-latex/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-react-native-latex')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNReactNativeLatex.sln` in `node_modules/react-native-react-native-latex/windows/RNReactNativeLatex.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Com.Reactlibrary.RNReactNativeLatex;` to the usings at the top of the file
  - Add `new RNReactNativeLatexPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNReactNativeLatex from 'react-native-react-native-latex';

// TODO: What to do with the module?
RNReactNativeLatex;
```
  