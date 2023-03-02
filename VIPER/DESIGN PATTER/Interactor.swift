//
//  Interactor.swift
//  VIPER
//
//  Created by Natan Gluszko on 01/03/2023.
//

import Foundation

// object
// protocol
// reference to presetner
// get data or do logic
// make calls

protocol AnyInteractor {
    var presenter: AnyPresetner? { get set }
    func getUsers()
}

class UserInteractor: AnyInteractor {
    
    var presenter: AnyPresetner?
    
    func getUsers() {
        // idk
    }
    
    
}
