//
//  DetailContactViewController.swift
//  Tables
//
//  Created by Pierre Juarez U. on 25/04/23.
//

import UIKit

class DetailContactViewController: UIViewController {
    
    @IBOutlet weak var lblData: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    
    var data: listModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblData.text = data?.name
        lblEmail.text = data?.email
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
