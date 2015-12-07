
//  ViewController.swift
//  QuartzCodeTest
//
//  Created by Yvette Cook on 01/12/2015.
//  Copyright © 2015 Yvette. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var voteMeter: VoteMeter!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func animate(sender: AnyObject) {
        voteMeter.addMainAnimationCompletionBlock { (finished) -> Void in
            print("Animation finished")
        }
        
    }

}

