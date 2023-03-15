//
//  EarthquakesTests.swift
//  EarthquakesTests
//
//  Created by Juan Hernandez Pazos on 15/03/23.
//  Copyright © 2023 Datafox. All rights reserved.
//

import XCTest
// Gives access to the app's internal funcions and types
@testable import Earthquakes

final class EarthquakesTests: XCTestCase {

    func testGeoJSONDecoderDecodesQUake() throws {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .millisecondsSince1970
        let quake = try decoder.decode(Quake.self, from: testFeature_nc73649170)
        
        XCTAssertEqual(quake.code, "73649170")
        
        let expectedSeconds = TimeInterval(1636129710550) / 1000
        let decodedSeconds = quake.time.timeIntervalSince1970
        
        XCTAssertEqual(expectedSeconds, decodedSeconds, accuracy: 0.00001)
    }

}
