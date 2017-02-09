//
//  ViewController.swift
//  GitTest
//
//  Created by Neale Hemrajani on 2/8/17.
//  Copyright © 2017 Neale Hemrajani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePickBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryBox: UITextField!
    
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipBox: UITextField!

    @IBOutlet weak var buyNowBtn: UIButton!
    
    let states = ["Alabama", "Arkansas", "California", "Maine", "New York"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func statePickBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryBox.isHidden = true
        countryLabel.isHidden = true
        zipBox.isHidden = true
        zipLabel.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryBox.isHidden = false
        countryLabel.isHidden = false
        zipBox.isHidden = false
        zipLabel.isHidden = false
    }
    
}

