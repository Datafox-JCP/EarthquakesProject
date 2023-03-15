//
//  QuakeError.swift
//  Earthquakes-iOS
//
//  Created by Juan Hernandez Pazos on 14/03/23.
//  Copyright © 2023 Apple. All rights reserved.
//

import Foundation

enum QuakeError: Error {
    case missingData
}

extension QuakeError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .missingData:
            return NSLocalizedString(
                "Found and will discard a quake missing a valid code, magnitude, place, or time.",
                comment: "")
        }
    }
}
