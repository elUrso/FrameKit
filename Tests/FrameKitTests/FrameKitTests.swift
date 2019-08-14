import XCTest
@testable import FrameKit

final class FrameKitTests: XCTestCase {
    func testBlank() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        var blank = Blank()
        blank.children.append(Text("This is a test"))
        
        XCTAssert(blank.display().render() == "<html>This is a test</html>")
    }
    
    func testText() {
        XCTAssert(Text("Hello").display().render() == AbstractText.synthesise(from: TextContext(content: "Hello")).display().render())
    }
    
    func testAbstractList() {
        XCTAssert(AbstractList<AbstractText>
            .synthesise(
                from: [
                    TextContext(content: "Holla"),
                    TextContext(content: "Que"),
                    TextContext(content: "Tal?"),
                ]).display().render() == "<div>HollaQueTal?</div>")
    }

    static var allTests = [
        ("BlankPage", testBlank),
        ("Stateful Text", testText),
        ("Abstract String List", testAbstractList)
    ]
}
