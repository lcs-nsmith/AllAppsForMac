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
                
                Group {
                    NavigationLink(destination: {
                        FlashCardsView()
                    }, label: {
                        Text("Flash Cards")
                    })
                    
                    Divider()
                }
                Group {
                    NavigationLink(destination: {
                        NavigationView {
                            FiguresListView()
                        }
                    }, label: {
                        Text("Figures Helper")
                    })
                    Divider()
                }
                
                Group {
                    NavigationLink(destination: {
                            MamaBearBowlView()
                    }, label: {
                        Text("Mama Bear's Bowl")
                    })
                    Divider()
                }
                
                Group {
                    NavigationLink(destination: {
                            CelsiusToFahrenheitView()
                    }, label: {
                        Text("Temperature Converter")
                    })
                    Divider()
                }
                Group {
                    NavigationLink(destination: {
                            GuessingGame()
                    }, label: {
                        Text("Guessing Game")
                    })
                    Divider()
                }
            }, header: {
                
                Text("Tools & Apps")
                
            })
        }
        
    }
}
struct NavigationListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NavigationListView()
        }
    }
}
