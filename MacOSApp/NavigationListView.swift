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
            Section(content: {

                NavigationLink(destination: {
                    FlashCardsView()
                }, label: {
                    Text("Flash Cards")
                })
                
            }, header: {
                
                Text("Tools & App's")
                
            })
        }
    }
}
struct NavigationListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationListView()
    }
}
