//
//  DelegateUIKitTests.swift
//  DelegateUIKitTests
//
//  Created by Erwin Warkentin on 08.03.23.
//

import XCTest
@testable import DelegateUIKit

class ViewControllerTests: XCTestCase {
    
    var sut: ViewController!

    override func setUp() {
        super.setUp()
        sut = ViewController()
        sut.loadViewIfNeeded()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_choosingProduct_updatesProductNameLabel() {
        let name = "iPhone"
        let imageName = "iphone"
        sut.didSelectProduct(name: name, imageName: imageName)
        XCTAssertEqual(sut.productNameLabel.text, name)
    }

    func test_choosingProduct_updatesProductImageView() {
        let name = "iPad"
        let imageName = "ipad"
        sut.didSelectProduct(name: name, imageName: imageName)
        XCTAssertEqual(sut.productImageView.image, UIImage(named: imageName))
    }
}
