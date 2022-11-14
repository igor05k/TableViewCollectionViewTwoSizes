//
//  ViewController.swift
//  CollectionViewTwoSizes2
//
//  Created by Igor Fernandes on 14/11/22.
//

import UIKit

struct Sections {
    static let categorias = 0
    static let experimente = 1
    static let popular = 2
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(MainTableViewCell.nib(), forCellReuseIdentifier: MainTableViewCell.identifier)
        tableView.register(DefaultFoodTableViewCell.nib(), forCellReuseIdentifier: DefaultFoodTableViewCell.identifier)
        tableView.register(PopularTableViewCell.nib(), forCellReuseIdentifier: PopularTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.identifier, for: indexPath) as! MainTableViewCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: DefaultFoodTableViewCell.identifier, for: indexPath) as! DefaultFoodTableViewCell
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: PopularTableViewCell.identifier, for: indexPath) as! PopularTableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case Sections.categorias:
            return 150
        default:
            return 220
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Categorias"
        case 1:
            return "Experimente"
        case 2:
            return "Popular"
        default:
            return nil
        }
    }
}

