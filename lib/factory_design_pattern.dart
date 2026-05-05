// Factory Design Pattern

/*
  သူကလည်း object create လုပ်တဲ့ design pattern တစ်ခုပဲ။

  သူက object ကို တိုက်ရိုက် instantiate လုပ်ပြီး object create လုပ်တာမဟုတ်ဖူး။

  - Abstract class ကို သုံးတယ်
  - ခေါ်သုံးမယ့် နေရာကနေ ဘယ် object ကို သုံးချင်ပါတယ်ဆိုတာ ပို့ပေးရမယ်
  - Factory Method ကနေ လိုချင်တဲ့ object ကို switch case နဲ့ စစ်ပြီး create လုပ်ပြီး ပြန်ပို့ပေးမယ်
  
 */

void main() {
  Theme theme = ThemeFactory.setTheme(ThemeMode.light);
  theme.apply();

  Theme themeDark = ThemeFactory.setTheme(ThemeMode.dark);
  themeDark.apply();

  // hashCode တွေက တူမှာ မဟုတ်ဖူး သူက single instance ပေးတာမဟုတ်ဖူး
  print(themeDark.hashCode);
  print(theme.hashCode);
}

class ThemeFactory {
  static Theme setTheme(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.light:
        return LightTheme();
      case ThemeMode.dark:
        return DarkTheme();
      case ThemeMode.red:
        return CustomRedTheme();
    }
  }
}

class LightTheme extends Theme {
  @override
  void apply() {
    print("Light theme is applying.");
  }
}

class DarkTheme extends Theme {
  @override
  void apply() {
    print("Dark theme is applying.");
  }
}

class CustomRedTheme extends Theme {
  @override
  void apply() {
    print("Custom Red theme is applying");
  }
}

abstract class Theme {
  void apply();
}

enum ThemeMode { light, dark, red }
