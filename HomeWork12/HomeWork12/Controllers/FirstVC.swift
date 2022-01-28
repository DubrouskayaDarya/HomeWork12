//
//  ViewController.swift
//  HomeWork12
//
//  Created by Дарья Дубровская on 26.01.22.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToVcBySegue() {
        let text = "GotoVCbySegue"
        performSegue(withIdentifier: "GotoVCbySegue", sender: text)
    }

    @IBAction func goToThird() {
        let vc = ThirdVC (nibName: "ThirdVC", bundle: nil)
        vc.navigationItem.title = "ThirdVC"
        vc.testText = "Hello!!!!!!!!"
        vc.navigationItem.title = "XIB VC"
        navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func goToFourth() {
        let storyboard = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        guard let fourthVC = storyboard.instantiateViewController(identifier: "FourthVC") as? FourthVC else { return }
        fourthVC.navigationItem.title = "Fourth VC !!!!"
        navigationController?.pushViewController(fourthVC, animated: true)
    }

    @IBAction func unwindToFirstVC(_ unwindSegue: UIStoryboardSegue) {
        if let sourceViewController = unwindSegue.source as? FourthVC {
            textLabel.text = "from \(String(describing: sourceViewController.navigationItem.title))"
        }
    }


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "GotoVCbySegue",
//            let text = sender as? String {
//            segue.destination.navigationItem.title = text
//        }
        //        print(segue.destination)
        //        print(segue.identifier ?? "")

        if let vc = segue.destination as? SecondVC,
            let text = sender as? String {
            vc.testText = "Привет из prepare for segue"
            vc.navigationItem.title = text
            vc.firstVC = self
        }

    }
    func changeValue(text: String) {
        textLabel.text = text
    }

}

