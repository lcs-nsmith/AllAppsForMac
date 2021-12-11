//
//  FlashCardsView.swift
//  FlashCards
//
//  Created by Claire Melville on 2021-12-10.
//

import SwiftUI

struct FlashCardsView: View {
    
    // Store the card to work with
    // It is randomly selected from the list of cards
    // MARK: Stored Properties
   @State var currentCard = listOfCards.randomElement()!
    
    // This controls whether the answer is visible
    @State var isAnswerShowing = false
    
    // What was the previous card?
    @State var previousCard = listOfCards.randomElement()!
    
    // MARK: Computed Properties
    var body: some View {
        ScrollView {
            //Show question
            HStack {
                
                Spacer()
                
            Text(currentCard.question)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                
                Spacer()
            }
            
            Button(action: {
                // Reveal the answer
                withAnimation {
                isAnswerShowing = true
                }
            }, label: {
                Text("Check")
            })
                .buttonStyle(.bordered)
            
            //Show answer
            Text(currentCard.answer)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            //            CONDITION       TRUE   FALSE
                .opacity(isAnswerShowing ? 1.0 : 0.0)
            
            Button(action: {
                // Keep track of the previous questoin
                previousCard = currentCard
                
                // Loop Forever unitl it picks a different new card!
                //Ue the condition to say "keep looping when this condition is "true"
                while previousCard == currentCard {
                    // Get another question
                    currentCard = listOfCards.randomElement()!
                }
                
                // Get another question
                withAnimation {
                currentCard = listOfCards.randomElement()!
                }
                // Hide the answer
                isAnswerShowing = false
            }, label: {
                Text("Another")
            })
                .buttonStyle(.bordered)
            //            CONDITION       TRUE   FALSE
                .opacity(isAnswerShowing ? 1.0 : 0.0)
            
        }
        .padding()
    }
}

struct FlashCardsView_Previews: PreviewProvider {
    static var previews: some View {
        FlashCardsView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
