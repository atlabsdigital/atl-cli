import XCTest
@testable import cli

final class cliTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(cli().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}