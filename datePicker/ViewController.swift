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
    
    
    let textField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.inputView = datePicker
        
        setupViews()
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
    
    func setupViews(){
        
        view.backgroundColor = .white
        textField.backgroundColor = .gray
        textField.placeholder = "Tap here to pick a date"
        textField.textAlignment = .center
        
        view.addSubview(textField)
        
        textField.translatesAutoresizingMaskIntoConstraints = false
    
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        
    }
}

