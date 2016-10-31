//
//  ViewController.swift
//  Miracle Pill
//
//  Created by Tomas-William Haffenden on 31/10/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerBtn: UIButton!
    
    let states = ["New South Wales", "Queensland", "South Australia", "Tasmania", "Victoria", "Western Australia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //when btn is pressed picker is displayed
    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) ->
        Int {
            return states.count
        }
        
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent
        component: Int) -> String? {
        return states[row]
    }
    
    //once state is selected title updates and picker is hidden
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }
}

