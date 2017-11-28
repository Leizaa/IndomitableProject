//
//  TaskPickerView.swift
//  IndomitableProject
//
//  Created by Davin Reinaldo Gozali on 28/11/17.
//  Copyright © 2017 RagingWind. All rights reserved.
//

import UIKit

class TaskPickerView: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var dataPicker: UIPickerView!
    var taskData: [String] = ["Requirement","Design","Coding","Testing","Review"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return taskData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return taskData[row]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        dataPicker.dataSource = self
        dataPicker.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
