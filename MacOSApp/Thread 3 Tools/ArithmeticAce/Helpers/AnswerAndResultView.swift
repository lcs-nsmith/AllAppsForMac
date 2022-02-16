//
//  AnswerAndResultView.swift
//  ArithmeticAce
//
//  Created by Nathan Smith on 2022-02-14.
//

import SwiftUI


struct AnswerAndResultView: View {
    // MARK: Stored Properties
    // These properties are not modified in this view so we can declare them as constants
    let answerCorrect: Bool
    let answerChecked: Bool
    // This propery need to be modified in this view
    // This view did not create the data
    // So we use @binding to create a derived value
    @Binding var inputGiven: String
    // MARK: Computed Properties
    var body: some View {
        HStack {
            ZStack {
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.green)
                //        CONDITION      true  false
                    .opacity(answerCorrect == true ? 1.0 : 0.0)
                
                Image(systemName: "x.square")
                    .foregroundColor(.red)
                //        CONDITION1         AND     CONDITION2         true  false
                //       answerChecked = true     answerCorrect = false
                    .opacity(answerChecked == true && answerCorrect == false ? 1.0 : 0.0) 
            }
            
            Spacer()
            
            TextField("",
                      text: $inputGiven)
                .multilineTextAlignment(.trailing)
        }
    }
}

//struct AnswerAndResultView_Previews: PreviewProvider {
//    static var previews: some View {
//        AnswerAndResultView(inputGiven: .constant)
//    }
//}
