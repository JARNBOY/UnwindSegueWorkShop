//
//  EViewController.swift
//  UnwindSegueWorkShop
//
//  Created by Papon Supamongkonchai on 8/11/2565 BE.
//

import UIKit

class EViewController: UIViewController {
    
    class func instantiateFromStoryboard() -> EViewController {
        let storyboard = UIStoryboard(name: "EStoryboard", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! EViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonBackToB() {
        performSegue(withIdentifier: "unwindToB", sender: self)
    }
}
