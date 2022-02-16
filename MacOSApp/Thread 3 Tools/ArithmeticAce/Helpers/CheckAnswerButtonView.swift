//
//  CheckAnswerButtonView.swift
//  ArithmeticAce
//
//  Created by Nathan Smith on 2022-02-14.
//

import SwiftUI

struct CheckAnswerButtonView: View {
    // MARK: Stored Properties
    @Binding var answerChecked: Bool
    let inputGiven: String
    @Binding var answerCorrect: Bool
    let output: Int
    
    var body: some View {
        Button(action: {
            
            // Answer has been checked!
            answerChecked = true
            
            // Convert the input given to an integer, if possible
            guard let sumGiven = Int(inputGiven) else {
                // Sadness, not a number
                answerCorrect = false
                return
            }
    
            // Check the answer!
            if sumGiven == output {
                // Celebrate! 👍🏼
                answerCorrect = true
            } else {
                // Sadness, they gave a number, but it's correct 😭
                answerCorrect = false
            }
        }, label: {
            Text("Check Answer")
                .font(.largeTitle)
        })
            .padding()
            .buttonStyle(.bordered)
        // Only show this button when an answer has not been checked
            .opacity(answerChecked == false ? 1.0 : 0.0)
    }
}
//
//struct CheckAnswerButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        CheckAnswerButtonView(answerChecked: .constant(true), inputGiven: "mom", answerCorrect: .constant(false), correctSum: 4)
//    }
//}
