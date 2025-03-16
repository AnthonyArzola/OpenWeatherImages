#if SWIFT_PACKAGE
import class Foundation.Bundle

public extension Bundle {
    static var openweatherimage: Bundle {
        Bundle.module
    }
}
#else
import class Foundation.Bundle

public extension Bundle {
    static var openweatherimage: Bundle {
        .main
    }
}
#endif
