//
//  ViewController.swift
//  PickerView
//
//  Created by 문석진 on 2021/03/08.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 1
    var imageArray = [UIImage?]()
    var imageFileName = ["bears.png", "dinos.jpg", "eagles.png", "giants.png", "heroes.png",
                        "lions.jpg", "tigers.png", "twins.jpg", "wyverns.png", "wiz.jpg"]
    
    @IBOutlet var pickerImg: UIPickerView!
    @IBOutlet var selectedItm: UILabel!
    @IBOutlet var imgView: UIImageView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFileName[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imgView.image = imageArray[row]
        selectedItm.text = imageFileName[row]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0..<imageFileName.count {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        
        selectedItm.text = imageFileName[0]
        imgView.image = imageArray[0]
        
    }
}

