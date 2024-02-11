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
        let image = Image(type.rawValue, bundle: OpenWeatherImages.bundle)
        return image
    }
    
    public static func getImage(name: String) -> Image? {
        guard let type = IconType(rawValue: name) else {
            return nil
        }
        let image = OpenWeatherImages.getImage(type: type)
        return image
    }
}
