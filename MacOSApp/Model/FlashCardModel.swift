//
//  Card.swift
//  FlashCards
//
//  Created by Claire Melville on 2021-12-10.
//

import Foundation

// Defines the information we'll track
// "Blueprint" for a card
// are card conform to the Equatable protocol
struct Card: Equatable {
    let question: String
    let answer: String
}

// Defines a list of cards to quiz with
let listOfCards = [
    Card(question: "What is the \"powerhouse\" of a cell?",
         answer: "mitochondria")
    
        ,
    
    Card(question: "What is hydrolosis?",
         answer: "when water has broken away from the cell")
    
    ,
    
    Card(question: "What must we do at the start of a sentence?",
         answer: "Capitilize the first letter")
    
    ,
    
    Card(question: "What is CH_2?",
         answer: "Methylene")
]
