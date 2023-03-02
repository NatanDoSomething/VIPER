//
//  Router.swift
//  VIPER
//
//  Created by Natan Gluszko on 01/03/2023.
//

import Foundation
import UIKit

// object
// entry point
typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    var entry: EntryPoint? { get }
    func start() -> AnyRouter
}
    
class UserRouter: AnyRouter {
    var entry: EntryPoint?
    
    
    static func start() -> AnyRouter {
        var router = UserRouter()
        var view: AnyView = UserViewController()
        var presetner: AnyPresetner = UserPresenter()
        var interactor: AnyInteractor = UserInteractor()
        
        view.presenter = presetner
        interactor.presenter = presetner
        presetner.router = router
        presetner.view = view
        presetner.interactor = interactor
        
        router.entry = view as? EntryPoint
    
        
        return router
    }
    
    
}
