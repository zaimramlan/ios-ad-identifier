//
//  ContentViewModel.swift
//  prototype-idfa-idfv
//
//  Created by Zaim Ramlan on 05/08/2020.
//

import AppTrackingTransparency
import AdSupport
import Combine
import UIKit

class ContentViewModel: ObservableObject {
    @Published var trackingStatus: String
    @Published var idfa: String = ASIdentifierManager.shared().advertisingIdentifier.uuidString
    var idfv: String { UIDevice().identifierForVendor?.uuidString ?? "-" }
    private var advertisingIdentifier: UUID { ASIdentifierManager.shared().advertisingIdentifier}

    init() {
        if #available(iOS 14.0, *) {
            self.trackingStatus = ATTrackingManager.trackingAuthorizationStatus.localizedString
        } else {
            self.trackingStatus = ASIdentifierManager.shared().localizedAdvertisingTrackingStatus
        }
    }

    func requestToTrack() {
        if #available(iOS 14.0, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                DispatchQueue.main.async {
                    self.idfa = ASIdentifierManager.shared().advertisingIdentifier.uuidString
                    self.trackingStatus = status.localizedString
                }
            }
        } else {
            print("No request framework is available.")
        }
    }
}
