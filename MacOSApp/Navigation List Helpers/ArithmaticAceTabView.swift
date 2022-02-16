//
//  ArithmaticAceTabView.swift
//  MacOSApp
//
//  Created by Nathan Smith on 2022-02-15.
//

import SwiftUI

struct ArithmaticAceTabView: View {
    var body: some View {
        TabView {
            AdditionView()
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("Addition")
                }
            SubtractionView()
                .tabItem {
                    Image(systemName: "minus.circle")
                    Text("Subtraction")
                }
            MultiplicationView()
                .tabItem {
                    Image(systemName: "multiply.circle")
                    Text("Multiplication")
                }
            DivisionView()
                .tabItem {
                    Image(systemName: "divide.circle")
                    Text("Divison")
                }
        }
    }
}
//    struct ArithmaticAceTabView_Previews: PreviewProvider {
//        static var previews: some View {
//            ArithmaticAceTabView()
//        }
//    }
