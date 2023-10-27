//
//  ViewController.swift
//  Custom Alert
//
//  Created by Mohamed Khaled on 27/10/2023.
//

import UIKit

protocol CustomAlertDelegate: AnyObject {
    func customAlert(details: DetailsModel)
}

class ViewController: UIViewController, CustomAlertDelegate {
    
    @IBOutlet weak var userNameTX: UILabel!
    var passedData : DetailsModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func customAlert(details: DetailsModel) {
        passedData = details
        updateUI()
    }
    
    func updateUI () {
        userNameTX.text = passedData?.title ?? ""
    }
    
    @IBAction func showAlert(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let myAlert = storyboard.instantiateViewController(withIdentifier: CustomAlertViewController.ID) as! CustomAlertViewController
        myAlert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        myAlert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        myAlert.delegate = self // Set the delegate to self
        self.present(myAlert, animated: true, completion: nil)
    }

}

