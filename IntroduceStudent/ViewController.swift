//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Jose Ortiz on 2/1/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var SchoolTextField: UITextField!
    @IBOutlet weak var YearSegmentControl: UISegmentedControl!
    @IBOutlet weak var NumberOfPets: UILabel!
    @IBOutlet weak var Stepper: UIStepper!
    @IBOutlet weak var Switch: UISwitch!
    
    
    @IBAction func NumberOfPetsAdder(_ sender: UIStepper) {
        NumberOfPets.text = "\(Int(sender.value))"
    }
    @IBAction func IntroduceAction(_ sender: UIButton) {
        let year = YearSegmentControl.titleForSegment(at: YearSegmentControl.selectedSegmentIndex)
        let introduction = "My name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolTextField.text!).I am currently in my \(year!) year and I own \(NumberOfPets.text!) dogs. It is \(Switch.isOn) that I want more pets."
        let alertController = UIAlertController(title: "Introduction Time:",message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title:"Nice to meet you!", style: .default, handler: nil)
        print(introduction)
        
        alertController.addAction(action)
        present(alertController,animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

