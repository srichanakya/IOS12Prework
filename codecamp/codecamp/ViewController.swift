//
//  ViewController.swift
//  codecamp
//
//  Created by Sri Chanakya Yennana on 12/28/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var MainImage: UIImageView!
    @IBOutlet weak var First: UITextField!
    @IBOutlet weak var Second: UITextField!
    @IBOutlet weak var School: UITextField!
    @IBOutlet weak var yearOfStudy: UISegmentedControl!
    @IBOutlet weak var noofpets: UILabel!
    
    @IBOutlet weak var TF: UISwitch!
    
    
    @IBAction func petsChange(_ sender: UIStepper) {
        noofpets.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func IntroButton(_ sender: Any) {
        let alert = UIAlertController(title: "My Intro", message: "My Name is \(self.First.text!) \(self.Second.text!) and i attend \(self.School.text!). I am currently in my \(yearOfStudy.titleForSegment(at: yearOfStudy.selectedSegmentIndex)!) and I own \(self.noofpets.text!) dogs. It is \(self.TF.isOn) that I want more pets.", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Nice to meet you!", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true)
        First.text = ""
        Second.text = ""
        School.text = ""
        noofpets.text = ""
        yearOfStudy.selectedSegmentIndex = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

