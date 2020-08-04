//
//  ContentView.swift
//  prototype-idfa-idfv
//
//  Created by Zaim Ramlan on 05/08/2020.
//

import AppTrackingTransparency
import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ContentViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Spacer()
                .frame(maxHeight: 10)
            Text("Ad Identifier App")
                .font(.title)
            VStack(alignment: .leading) {
                Text("IDFV")
                    .bold()
                Text(viewModel.idfv)
            }
            VStack(alignment: .leading) {
                Text("IDFA")
                    .bold()
                Text(viewModel.idfa)
            }
            VStack(alignment: .leading) {
                Text("Tracking Status")
                    .bold()
                Text(viewModel.trackingStatus)
            }
            Button("Request to Track", action: viewModel.requestToTrack)
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel())
    }
}
