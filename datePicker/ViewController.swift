//
//  ViewController.swift
//  datePicker
//
//  Created by Jack Ngai on 6/14/17.
//  Copyright © 2017 Jack Ngai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.datePickerMode = UIDatePickerMode.dateAndTime
        
        picker.addTarget(self, action: #selector(datePickerValueChanged(sender:)), for: .valueChanged)
        return picker
    }()
    
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.inputView = datePicker
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func datePickerValueChanged(sender: UIDatePicker) {
        
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.short
        formatter.timeStyle = DateFormatter.Style.short
        
        textField.text = formatter.string(from: sender.date)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

