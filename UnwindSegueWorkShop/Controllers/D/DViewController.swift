//
//  DViewController.swift
//  UnwindSegueWorkShop
//
//  Created by Papon Supamongkonchai on 8/11/2565 BE.
//

import UIKit

class DViewController: UIViewController {

    class func instantiateFromStoryboard() -> DViewController {
        let storyboard = UIStoryboard(name: "DStoryboard", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! DViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonGoToE() {
        let eVC = EViewController.instantiateFromStoryboard()
        _ = eVC.view
        self.navigationController?.pushViewController(eVC, animated: true)
    }

}
