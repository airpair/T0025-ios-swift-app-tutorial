//
//  DismissSegue.swift
//  TaskMe
//
//  Created by Jack Watson-Hamblin on 5/10/2014.
//  Copyright (c) 2014 AirPair. All rights reserved.
//

import UIKit

@objc(DismissSegue) class DismissSegue: UIStoryboardSegue {
    override func perform() {
        if let controller = sourceViewController.presentingViewController? {
            controller.dismissViewControllerAnimated(true, completion: nil)
        }
    }
}
