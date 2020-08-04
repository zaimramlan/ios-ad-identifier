//
//  ASIdentifierManager+Status.swift
//  prototype-ad-identifier
//
//  Created by Zaim Ramlan on 05/08/2020.
//

import AdSupport
import Foundation

extension ASIdentifierManager {
    var localizedAdvertisingTrackingStatus: String {
        isAdvertisingTrackingEnabled ? "Authorized" : "Denied"
    }
}
