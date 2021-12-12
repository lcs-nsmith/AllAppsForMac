//
//  NavigationListView.swift
//  MacOSApp
//
//  Created by Nate S on 2021-12-12.
//

import SwiftUI

struct NavigationListView: View {
    var body: some View {
        List {
            NavigationLink(destination: FlashCardsView()) {
                Text("Flash Cards")
            }
        }
    }
}
struct NavigationListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationListView()
    }
}
