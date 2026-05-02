//
//  Model.swift
//  URLsession
//
//  Created by Вавилов Илья on 2/5/26.
//

import Foundation

protocol Model {
    var word: String { get set }
    
    func getWord() -> String
}
