//
//  View.swift
//  VIPER
//
//  Created by Natan Gluszko on 01/03/2023.
//

import Foundation
import UIKit

// view can be viewcontroller is a part of it
// protocol
// reference to the presetner 

protocol AnyView {
    var presenter: AnyPresetner? { get set }
    
    func update(with users: [User])
    func update(with error: String)
}

class UserViewController: UIViewController, AnyView, UITableViewDelegate, UITableViewDataSource {
        
    var presenter: AnyPresetner?
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self,
                       forCellReuseIdentifier: "cell")
        table.isHidden = true
        return table
    }()
    
override func viewDidLoad() {
        view.addSubview(tableView)
    view.backgroundColor = .systemRed
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func update(with users: [User]) {
        // idk
    }

    func update(with error: String) {
        // idk
    }

    // table

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
