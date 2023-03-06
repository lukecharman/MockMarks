import MockMarks
import XCTest

open class MockMarksUITestCase: XCTestCase {

  public var app: XCUIApplication!

  public static var isRecording: Bool = false {
    didSet {
      MockMarks.isRecording = isRecording
    }
  }

  override open func setUp() {
    super.setUp()

    continueAfterFailure = false

    guard !MockMarks.isRecording else {
      return XCTFail("🔴 Record mode is currently switched on. All tests will fail in this state.")
    }

    app = XCUIApplication()
    app.launchEnvironment["XCUI_IS_RUNNING"] = String(true)

    launchApp(withStubsNamed: stubName)
  }

  override open func tearDown() {
    app = nil

    super.tearDown()
  }

  public func launchApp(withStubsNamed name: String? = nil) {
    if let name {
      app.launchEnvironment["XCUI_INITIAL_MOCK_JSON"] = name
    }

    app.launch()
  }
}

private extension MockMarksUITestCase {

  var stubName: String {
    name
      .split(separator: " ")
      .last!
      .replacingOccurrences(of: "]", with: "")
  }
}
