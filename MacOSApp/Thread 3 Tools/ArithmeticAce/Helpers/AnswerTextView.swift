//
//  AnswerTextView.swift
//  ArithmeticAce
//
//  Created by Nathan Smith on 2022-02-15.
//

import SwiftUI

struct AnswerTextView: View {
    
    let output: Int
    let answerChecked : Bool
    let answerCorrect: Bool
    
    var body: some View {
        Text("Correct Answer = \(output)")
            .font(.title)
            .foregroundColor(.green)
            .opacity(answerChecked == true && answerCorrect == false ? 1.0 : 0.0)
}
}
//
//struct AnswerTextView_Previews: PreviewProvider {
//    static var previews: some View {
//        AnswerTextView()
//    }
//}
