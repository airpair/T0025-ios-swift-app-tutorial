//
//  AddTaskViewController.swift
//  TaskMe
//
//  Created by Jack Watson-Hamblin on 5/10/2014.
//  Copyright (c) 2014 AirPair. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var notesField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
     MARK: - Navigation

     In a storyboard-based application, you will often want to do a little preparation before navigation
    */
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "dismissAndSave" {
            let task = Task(title: titleField.text, notes: notesField.text)
            TaskStore.sharedInstance.add(task)
        }
    }

}
