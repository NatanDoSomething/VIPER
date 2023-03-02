//
//  Presenter.swift
//  VIPER
//
//  Created by Natan Gluszko on 01/03/2023.
//

import Foundation

// object
// protocol
// reference to view, interactor and router

protocol AnyPresetner {
    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set}
    var view: AnyView? { get set }
    
    func interactorDidFetchUsers(with result: Result<User, Error>)
}

class UserPresenter: AnyPresetner {
    
    var router: AnyRouter?
    var interactor: AnyInteractor?
    var view: AnyView?
    
    func interactorDidFetchUsers(with result: Result<User, Error>) {
        // idk
    }
    

    
    
}
