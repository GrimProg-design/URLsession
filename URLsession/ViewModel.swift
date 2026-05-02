//
//  ViewModel.swift
//  URLsession
//
//  Created by Вавилов Илья on 2/5/26.
//

import Foundation

class ViewModel: Model {
    var word: String
    
    init(word: String) {
        self.word = word
    }
    
    func getWord() -> String {
        return word
    }
}
