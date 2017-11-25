//
//  ViewController.swift
//  IndomitableProject
//
//  Created by yudi on 11/23/17.
//  Copyright © 2017 RagingWind. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate {

    
    var CategegoryCollectionData: [String] = ["Satu", "Dua", "Tiga", "Empat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        CategoryCollection.dataSource = self
        CategoryCollection.delegate = self
    }

    @IBOutlet weak var CategoryCollection: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    @IBAction func categoryNext(_ sender: Any) {
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CategegoryCollectionData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return CategegoryCollectionData[row]
    }

}

