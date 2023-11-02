
# Gradient Button

Gradient button package lets you add a beautiful gradient to a button in your Flutter app.

## Installation 

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  gradient_button: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:gradient_button/gradient_button.dart';
```

## Example
There are a number of properties that you can modify:

 -  Button Text
 - width               
 - Button Padding
 - Button TextStle
 - gradient (color1 and color2),

<hr>

<table>
<tr>
<td>

```dart
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientButtton(
              width: MediaQuery.sizeOf(context).width,
              buttonText: "Continue",
              buttonTextStyle: TextStyle(color: Colors.white, fontSize: 16),
              colors: [Colors.red, Colors.green, Colors.blue],
              buttonPadding: EdgeInsets.symmetric(vertical: 15),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
```

</td>
<td>
<img  src="https://github.com/Aburafik/Gradient_button_package/assets/60104035/dbe5cac8-0884-483d-a6ad-fcec4434d132"  alt="">
</td>
</tr>
</table>

## Next Goals

 - [x] Add more properties to the package..
