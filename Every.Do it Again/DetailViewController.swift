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
    
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem
        {
            if let titleLabel = titleLabel
            {
              titleLabel.text = detail.title;
            }
            if let descLabel = descriptionLabel
            {
                descLabel.text = detail.todoDescription;
            }
            if let pLabel = priorityLabel
            {
                pLabel.text = String(detail.priorityNumber);
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: ToDo? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

