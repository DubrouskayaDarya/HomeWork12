//
//  ThirdVC.swift
//  HomeWork12
//
//  Created by Дарья Дубровская on 27.01.22.
//

import UIKit

class ThirdVC: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    
    var testText: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.text = testText
        // Do any additional setup after loading the view.
    }


    @IBAction func goBack() {
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
