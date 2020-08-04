//
//  ATTrackingManager+Status.swift
//  prototype-idfa-idfv
//
//  Created by Zaim Ramlan on 05/08/2020.
//

import AppTrackingTransparency
import Foundation

@available(iOS 14.0, *)
extension ATTrackingManager.AuthorizationStatus {
    var localizedString: String {
        switch self {
        case .authorized:
            return "Authorized"

        case .denied:
            return "Denied"

        case .notDetermined:
            return "Not Determined"

        case .restricted:
            return "Restricted"

        @unknown default:
            return "-"
        }
    }
}
