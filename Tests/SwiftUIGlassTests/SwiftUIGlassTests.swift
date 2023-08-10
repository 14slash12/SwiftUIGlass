import XCTest
@testable import SwiftUIGlass

final class SwiftUIGlassTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(GlassView(cornerRadius: 20.0).cornerRadius, 20.0)
    }
}
