//
//  CustomAlertViewController.swift
//  Custom Alert
//
//  Created by Mohamed Khaled on 27/10/2023.
//

import UIKit

class CustomAlertViewController: UIViewController {
    static let ID = String(describing: CustomAlertViewController.self)
    
    @IBOutlet weak var discountAmountLabel: UITextField!
    @IBOutlet weak var titleLabel: UITextField!
    
    weak var delegate: CustomAlertDelegate?
    var details: DetailsModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func done(_ sender: Any) {
        let detailsData = DetailsModel(title: titleLabel.text ?? "", amount: discountAmountLabel.text ?? "")
        delegate?.customAlert(details: detailsData)
        dismiss(animated: true)
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

