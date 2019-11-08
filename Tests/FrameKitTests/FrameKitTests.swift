import XCTest
@testable import FrameKit

final class FrameKitTests: XCTestCase {
    func testBlank() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let frame = Page {
            Head {
                Meta(name: "charset", value: "utf-8")
            }
            Body {
                Paragraph("Ola Claudinha 😀")
            }
        }   
        
        let element = frame.synthesize()
        
        let page = element.render()
        
        let expected = "<html ><head ><meta  \"charset\"=\"utf-8\"/></head><body ><p >Ola Claudinha 😀</p></body></html>"
        
        XCTAssert(page == expected)
    }
    static var allTests = [
        ("BlankPage", testBlank),
    ]
}
