//
//  CViewController.swift
//  UnwindSegueWorkShop
//
//  Created by Papon Supamongkonchai on 8/11/2565 BE.
//

import UIKit

class CViewController: UIViewController {

    class func instantiateFromStoryboard() -> CViewController {
        let storyboard = UIStoryboard(name: "CStoryboard", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! CViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonGoToD() {
        let dVCDialog = DViewController.instantiateFromStoryboard()
        _ = dVCDialog.view
        
        let nav = UINavigationController(rootViewController: dVCDialog)
        nav.isNavigationBarHidden = true
        nav.modalPresentationStyle = .overCurrentContext
        nav.modalTransitionStyle = .coverVertical

        self.present(nav, animated: true, completion: { () -> (Void) in
            print("show")
        })
    }

}
