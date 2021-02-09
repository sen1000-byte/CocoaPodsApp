//
//  SecondViewController.swift
//  CocoaPodsApp
//
//  Created by Chihiro Nishiwaki on 2021/02/09.
//

import UIKit
import PKHUD

class SecondViewController: UIViewController {
    
    var flag: Int! = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        flag = 0
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        HUD.flash(.progress, delay: 2.0)
    }
    
    @IBAction func back() {
        if flag == 0{
            HUD.dimsBackground = true
            HUD.flash(.labeledError(title: "画面遷移エラー", subtitle: "もう一度ボタンを押してください"), delay: 2.0)
            flag = 1

            
        }else {
            dismiss(animated: true, completion: nil)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
