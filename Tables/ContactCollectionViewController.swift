//
//  ContactCollectionViewController.swift
//  Tables
//
//  Created by Pierre Juarez U. on 25/04/23.
//

import UIKit

class ContactCollectionViewController: UIViewController {
    
    @IBOutlet weak var contactCollection: UICollectionView!
    
    var list = [listModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactCollection.dataSource = self
        contactCollection.delegate = self
        
        let elem1 = listModel(name: "Pierre Juarez", email: "jp@email.dev.com")
        let elem2 = listModel(name: "Jose Ramos", email: "jsrpos@email.dev.com")
        let elem3 = listModel(name: "Benito Juarez", email: "jp@email.dev.com")
        let elem4 = listModel(name: "Benito Juarez", email: "jp@email.dev.com")
        
        list.append(elem1)
        list.append(elem2)
        list.append(elem3)
        list.append(elem4)

    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ContactCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = contactCollection.dequeueReusableCell(withReuseIdentifier: "ContactCollectionViewCell", for: indexPath) as! ContactCollectionViewCell
        let item = list[indexPath.row]
        cell.lblItem.text = item.name
        cell.imgItem.image = UIImage(systemName: "person.crop.circle.fill")
        return cell
    }
    
    
}
