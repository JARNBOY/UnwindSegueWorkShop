//
//  AViewController.swift
//  UnwindSegueWorkShop
//
//  Created by Papon Supamongkonchai on 8/11/2565 BE.
//

import UIKit

class AViewController: UIViewController {

    class func instantiateFromStoryboard() -> AViewController {
        let storyboard = UIStoryboard(name: "AStoryboard", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! AViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonGoToB() {
        let bVC = BViewController.instantiateFromStoryboard()
        _ = bVC.view
        self.navigationController?.pushViewController(bVC, animated: true)
    }

}
