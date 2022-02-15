//
//  MenuView.swift
//  ArithmeticAce
//
//  Created by Nathan Smith on 2022-02-08.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        
        List {
            Section(content: {
                
                NavigationLink(destination: {
                    MultiplicationView()
                }, label: {
                    Text("multiplication Ace")
                })
                
            }, header: {
                
                Text("Multipication")
                
            })
            Section(content: {
                
                NavigationLink(destination: {
                    AdditionView()
                }, label: {
                    Text("Addition Ace")
                })
                
            }, header: {
                
                
                Text("Additon")
                
            })
        }
        
        
        
        
        
        
        
        
//        VStack {
//            NavigationLink(destination: MultiplicationView()) {
//                List {
//                    ZStack {
//                        Image(systemName: "rectangle.fill")
//                            .resizable(resizingMode: .stretch)
//                            .foregroundColor(.yellow)
//                        Text("Multiplication")
//                            .font(.largeTitle)
//                            .foregroundColor(.purple)
//                    }
//                }
//                NavigationLink(destination: AdditionView()) {
//                    ZStack {
//                        Image(systemName: "rectangle.fill")
//                            .resizable(resizingMode: .stretch)
//                            .foregroundColor(.yellow)
//                        Text("Addition")
//                            .font(.largeTitle)
//                            .foregroundColor(.purple)
//                    }
//                }
//            }
//        }
    }
}
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MenuView()
        }
    }
}
