//
//  SecondVC.swift
//  HomeWork12
//
//  Created by Дарья Дубровская on 27.01.22.
//

import UIKit

class SecondVC: UIViewController {

    var testText: String = ""
    var firstVC: FirstVC?

    @IBOutlet weak var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = testText
        // Do any additional setup after loading the view.
    }

    @IBAction func goBack() {
//        firstVC?.textLabel.text = "Hello !!!!!"
        firstVC?.navigationItem.title = "Первый!!!"
        firstVC?.changeValue(text: "Hello !!!!! new")
        navigationController?.popToRootViewController(animated: true)
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
