import Foundation
import SwiftUI

public struct OpenWeatherImages {

    private static var bundle: Bundle? {
        guard let path = Bundle.main.path(forResource: "Media",ofType: "bundle"),
              let bundle = Bundle(path: path) else {
            return nil
        }
        return bundle
    }
    
    public static func getImage(type: IconType) -> Image? {
        return Image(type.rawValue, bundle: OpenWeatherImages.bundle)
    }
    
    public static func getImage(name: String) -> Image? {
        guard let type = IconType(rawValue: name) else {
            return nil
        }
        return OpenWeatherImages.getImage(type: type)
    }
}
