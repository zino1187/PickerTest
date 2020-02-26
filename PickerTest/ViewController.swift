//
//  ViewController.swift
//  PickerTest
//
//  Created by zino-mac on 2020/02/26.
//  Copyright © 2020 zino-mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    
    @IBOutlet weak var picker: UIPickerView!
    var data=["한국","미국","영국"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        picker.delegate = self
        picker.dataSource = self
    }
    //레코드 갯수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    //보여줄 것
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    //몇쌍씩 보여줄지
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //선택시 할 것
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(data[row])
    }
}

