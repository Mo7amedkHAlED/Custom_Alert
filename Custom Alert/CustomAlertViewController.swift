//
//  CustomAlertViewController.swift
//  Custom Alert
//
//  Created by Mohamed Khaled on 27/10/2023.
//

import UIKit

class CustomAlertViewController: UIViewController {
    static let ID = String(describing: CustomAlertViewController.self)
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    @IBAction func done(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
