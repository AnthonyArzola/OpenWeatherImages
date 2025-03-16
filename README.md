# OpenWeatherImages

**OpenWeatherImages** is a **Swift Package** that provies images associated with OpenWeatherAPI's [weather](https://openweathermap.org/weather-conditions) object.

## Sample Images

![](./Sources/OpenWeatherImages/Resources/Media.xcassets/01d.imageset/01d.png)
![](./Sources/OpenWeatherImages/Resources/Media.xcassets/02d.imageset/02d.png)
![](./Sources/OpenWeatherImages/Resources/Media.xcassets/10d.imageset/10d.png)
![](./Sources/OpenWeatherImages/Resources/Media.xcassets/09d.imageset/09d.png)

Usage:
```swift
// Lookup using string name
let imageName = "01d"
let image = OpenWeatherImages.getImage(name: imageName)
```

```swift
/// Lookup using enum
let image = OpenWeatherImages.getImage(type: ._01d)
```