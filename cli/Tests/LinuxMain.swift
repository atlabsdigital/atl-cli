import XCTest

import CliTests

var tests = [XCTestCaseEntry]()
tests += CliTests.allTests()
XCTMain(tests)
