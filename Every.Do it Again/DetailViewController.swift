//
//  DetailViewController.swift
//  Every.Do it Again
//
//  Created by Alejandro Zielinsky on 2018-05-15.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priorityLabel: UILabel!
    
    @IBOutlet weak var `switch`: UISwitch!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem
        {
            if let tLabel = titleLabel
            {
              tLabel.text = detail.title;
            }
            if let descLabel = descriptionLabel
            {
                descLabel.text = detail.todoDescription;
            }
            if let pLabel = priorityLabel
            {
                pLabel.text = String(detail.priorityNumber);
            }
            
            if let switchButton = `switch`
            {
                if(detail.isCompleted)
                {
                    switchButton.isOn = true;
                }
                else
                {
                    switchButton.isOn = false;
                }
            }
        }
    
    }

    @IBAction func switchToggled(_ sender: Any)
    {
        guard let item = detailItem
        else
        {
            return
        }
        
        if(item.isCompleted)
        {
            item.isCompleted = false;
        }
        else
        {
            item.isCompleted = true;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: ToDo? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

