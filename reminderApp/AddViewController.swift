//
//  AddViewController.swift
//  reminderApp
//
//  Created by Deha Süer on 2.08.2022.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet weak var lblTitle: UITextField!
    @IBOutlet weak var lblBocy: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    public var completion : ((String,String,Date) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(btnSave))
        // Do any additional setup after loading the view.
    }
    
    @objc func btnSave() {
            
            if let titletext = lblTitle.text, !titletext.isEmpty,
                let bodyText = lblBocy.text, !bodyText.isEmpty {
                
                let targetDate = datePicker.date
                
                completion?(titletext, bodyText,targetDate)
                
            }
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
