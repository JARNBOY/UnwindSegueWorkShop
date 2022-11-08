//
//  BViewController.swift
//  UnwindSegueWorkShop
//
//  Created by Papon Supamongkonchai on 8/11/2565 BE.
//

import UIKit

class BViewController: UIViewController {
    
    class func instantiateFromStoryboard() -> BViewController {
        let storyboard = UIStoryboard(name: "BStoryboard", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! BViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func unwindToB( _ seg: UIStoryboardSegue) {
        
    }
    
    @IBAction func buttonGoToC() {
        let cVC = CViewController.instantiateFromStoryboard()
        _ = cVC.view
        self.navigationController?.pushViewController(cVC, animated: true)
    }

}
