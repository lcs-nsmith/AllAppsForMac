//
//  AnimationsAbstractionView.swift
//  ArithmeticAce
//
//  Created by Nathan Smith on 2022-02-14.
//

import SwiftUI

struct AnimationsAbstractionView: View {
    
    let answerChecked: Bool
    let answerCorrect: Bool
    
    var body: some View {
        ZStack {
            
            // Reaction Animation
            // MARK: --
//
//            Image(nsImage: #imageLiteral(resourceName: "animation_640_kzhiwjiu.gif"))
//                .opacity(answerCorrect == true ? 1.0 : 0.0)
//                .padding()
//                .scaledToFit()
//                .frame(maxWidth: 20, maxHeight: 20)
//
//            Image(nsImage: #imageLiteral(resourceName: "animation_640_kzhjq6k3.gif"))
//                .opacity(answerChecked == true && answerCorrect == false ? 1.0 : 0.0)
//                .padding()
//                .frame(maxWidth: 20, maxHeight: 20)
            // MARK: --
        }
    }
}

struct AnimationsAbstractionView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsAbstractionView(answerChecked: true, answerCorrect: false)
    }
}
