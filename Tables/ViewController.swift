//
//  ViewController.swift
//  Tables
//
//  Created by Pierre Juarez U. on 24/04/23.
//

import UIKit

struct listModel {
    let name: String
    let email: String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var contactTable: UITableView!
    
    var list = [listModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactTable.delegate = self
        contactTable.dataSource = self
        
        let elem1 = listModel(name: "Pierre Juarez", email: "jp@email.dev.com")
        let elem2 = listModel(name: "Jose Ramos", email: "jsrpos@email.dev.com")
        let elem3 = listModel(name: "Benito Juarez", email: "jp@email.dev.com")
        let elem4 = listModel(name: "Benito Juarez", email: "jp@email.dev.com")
        
        list.append(elem1)
        list.append(elem2)
        list.append(elem3)
        list.append(elem4)
        
        self.paintNavigation()
    }
    
    
    func paintNavigation(){
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .purple
        appearance.titleTextAttributes = [.font: UIFont.boldSystemFont(ofSize: 25.0),
                                          .foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellTableContact", for: indexPath)
        let item = list[indexPath.row]
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = item.email
        cell.imageView?.image = UIImage(systemName: "person.crop.circle.fill")
        return cell
    }
    
    
}
