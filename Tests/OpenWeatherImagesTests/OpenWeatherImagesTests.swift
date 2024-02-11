import XCTest
@testable import OpenWeatherImages

final class OpenWeatherImagesTests: XCTestCase {
    
    func testUsingIconType() throws {
        let image = OpenWeatherImages.getImage(type: ._01d)
        XCTAssertNotNil(image)
    }
    
    func testUsingValidImageName() throws {
        // Test valid image name
        let imageName = "01D"
        let image = OpenWeatherImages.getImage(name: imageName)
        XCTAssertNil(image)
    }
    
    func testUsingInvalidImageName() throws {
        // Test invalid image name
        let imageName = "_01D_"
        let image = OpenWeatherImages.getImage(name: imageName)
        XCTAssertNil(image)
    }

    func testUsingInvalidImage() throws {
        // Test invalid image name
        let imageName = "07D"
        let image = OpenWeatherImages.getImage(name: imageName)
        XCTAssertNil(image)
    }
}
