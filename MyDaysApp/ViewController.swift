//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Вероника Черных on 24.2.23..
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dayPicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    
    @IBAction func resultButtonTapped() {
        infoLabel.text = "Ты невысыпаешься уже \(numberOfDays)"
    }
    
    
}

