//
//  ViewController.swift
//  CocoaPodsApp
//
//  Created by Chihiro Nishiwaki on 2021/02/08.
//

import UIKit
import PKHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // HUD.dimsBackground = false
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //viewdidappearのタイミングでhudの表示
        HUD.dimsBackground = false
        HUD.flash(.success, delay:  1.5)
        
    }
    
    @IBAction func button() {
        self.performSegue(withIdentifier: "ToSecond", sender: nil)
    }

}

