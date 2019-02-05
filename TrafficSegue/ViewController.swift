//
//  ViewController.swift
//  TrafficSegue
//
//  Created by Chinonso Obidike on 1/30/19.
//  Copyright © 2019 Chinonso Obidike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    //destination method. Navigate to the first segue
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
        print("unwindToRed(unwindSegue:)");
        if let identifier: String = unwindSegue.identifier {
            print("unwindSegue.identifier = \(identifier)");
        }
        if let title: String = unwindSegue.source.title {
            print("unwindSegue.source.title = \(title)");
        }
        if let title: String = unwindSegue.source.navigationItem.title {
            print("unwindSegue.source.navigationItem.title = \(title)");
        }
        if let title: String = unwindSegue.destination.title {
            print("unwindSegue.destination.title = \(title)");
        }
        if let title: String = unwindSegue.destination.navigationItem.title {
            print("unwindSegue.destination.navigationItem.title = \(title)");
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
}

