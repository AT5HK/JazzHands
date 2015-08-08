//
//  ViewController.swift
//  JazzHands
//
//  Created by Auston Salvana on 8/7/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = .Popover
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        presentViewController(TourController(), animated: true, completion: nil)
    }
    
    
}

